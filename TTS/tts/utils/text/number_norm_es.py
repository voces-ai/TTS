""" from https://github.com/keithito/tacotron """

import re
from typing import Dict

# import inflect

# _inflect = inflect.engine()

from num2words import num2words

_comma_number_re = re.compile(r"([0-9][0-9\,]+[0-9])")
_comma_number_re_es = re.compile(r"([0-9][0-9\.]+[0-9])")

_decimal_number_re = re.compile(r"([0-9]+\.[0-9]+)")
_decimal_number_re_es = re.compile(r"([0-9]+\,[0-9]+)")

_currency_re = re.compile(r"(£|\$|¥)([0-9\,\.]*[0-9]+)")
_currency_re_es = re.compile(r"([0-9\,\.]*[0-9])+(£|\$|¥|€)")

_ordinal_re = re.compile(r"[0-9]+(st|nd|rd|th)")
_ordinal_re_es = re.compile(r"([0-9])+(º|ª)")

_number_re = re.compile(r"-?[0-9]+")


def _remove_commas(m):
    return m.group(1).replace(".", "")


def _expand_decimal_point(m):
    return m.group(1).replace(",", " con ")


def __expand_currency(value: str, inflection: Dict[float, str]) -> str:
    parts = value.replace(".", "").split(",")
    if len(parts) > 2:
        return f"{value} {inflection[2]}"  # Unexpected format
    text = []
    integer = int(parts[0]) if parts[0] else 0
    if integer > 0:
        integer_unit = inflection.get(integer, inflection[2])
        text.append(f"{integer} {integer_unit}")
    fraction = int(parts[1]) if len(parts) > 1 and parts[1] else 0
    if fraction > 0:
        if integer > 0:
            text.append(" con ")
        fraction_unit = inflection.get(fraction / 100, inflection[0.02])
        text.append(f"{fraction} {fraction_unit}")
    if len(text) == 0:
        return f"zero {inflection[2]}"
    return " ".join(text)


def _expand_currency(m: "re.Match") -> str:
    currencies = {
        "$": {
            0.01: "centavo",
            0.02: "centavos",
            1: "dolar",
            2: "dolares",
        },
        "€": {
            0.01: "céntimo",
            0.02: "céntimos",
            1: "euro",
            2: "euros",
        },
        "£": {
            0.01: "penique",
            0.02: "peniques",
            1: "libra esterlina",
            2: "libras esterlinas",
        },
        "¥": {
            # TODO rin
            0.02: "sen",
            2: "yen",
        },
    }
    unit = m.group(2)
    currency = currencies[unit]
    value = m.group(1)
    return __expand_currency(value, currency)


def _expand_ordinal(m):
    print(m.group(1))
    return num2words(m.group(1), lang='es', to='ordinal')
    # return _inflect.number_to_words(m.group(0))


def _expand_number(m):
    num = int(m.group(0))
    return num2words(num, lang='es')
    # if 1000 < num < 3000:
    #     if num == 2000:
    #         return "dos mil"
    #     if 2000 < num < 2010:
    #         return "dos mil " + _inflect.number_to_words(num % 100)
    #     if num % 100 == 0:
    #         return _inflect.number_to_words(num // 100) + " hundred"
    #     return _inflect.number_to_words(num, andword="", zero="oh", group=2).replace(", ", " ")
    # return _inflect.number_to_words(num, andword="")


def normalize_numbers_es(text):
    text = re.sub(_comma_number_re_es, _remove_commas, text)
    text = re.sub(_currency_re_es, _expand_currency, text)
    text = re.sub(_decimal_number_re_es, _expand_decimal_point, text)
    text = re.sub(_ordinal_re_es, _expand_ordinal, text)
    text = re.sub(_number_re, _expand_number, text)
    return text
