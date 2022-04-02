import re

from anyascii import anyascii

from TTS.tts.utils.text.chinese_mandarin.numbers import replace_numbers_to_characters_in_text

from .abbreviations import abbreviations_en, abbreviations_fr, abbreviations_es
from .number_norm import normalize_numbers
from .number_norm_es import normalize_numbers_es

from .time import expand_time_english
from .time_es import expand_time_spanish


# Regular expression matching whitespace:
_whitespace_re = re.compile(r"\s+")


def expand_abbreviations(text, lang="en"):
    if lang == "en":
        _abbreviations = abbreviations_en
    elif lang == "fr":
        _abbreviations = abbreviations_fr
    elif lang == "es":
        _abbreviations = abbreviations_es
    for regex, replacement in _abbreviations:
        text = re.sub(regex, replacement, text)
    return text


def expand_numbers(text, lang="en"):
    if lang == "en":
        return normalize_numbers(text)
    elif lang == "es":
        return normalize_numbers_es(text)


def lowercase(text):
    return text.lower()


def collapse_whitespace(text):
    return re.sub(_whitespace_re, " ", text).strip()


def convert_to_ascii(text):
    return anyascii(text)


def remove_aux_symbols(text):
    text = re.sub(r"[\<\>\(\)\[\]\"]+", "", text)
    return text


def replace_symbols(text, lang="en"):
    text = text.replace(";", ",")
    text = text.replace("-", " ")
    text = text.replace(":", ",")
    
    text = text.replace(", (", ", ")
    text = text.replace("),", ",")
    text = text.replace("(", ", ")
    text = text.replace(").", ".")
    text = text.replace(")", ", ")
    
        
    if lang == "en":
        text = text.replace("&", " and ")
    elif lang == "fr":
        text = text.replace("&", " et ")
    elif lang == "pt":
        text = text.replace("&", " e ")
    # added by LBC
    elif lang == "es": 
        text = text.replace("&", " y ")
        text = text.replace("%", " por ciento ")
        text = text.replace("€", " euros ")
        
        
    return text


def basic_cleaners(text):
    """Basic pipeline that lowercases and collapses whitespace without transliteration."""
    text = lowercase(text)
    text = collapse_whitespace(text)
    return text


def transliteration_cleaners(text):
    """Pipeline for non-English text that transliterates to ASCII."""
    # text = convert_to_ascii(text)
    text = lowercase(text)
    text = collapse_whitespace(text)
    return text


def basic_german_cleaners(text):
    """Pipeline for German text"""
    text = lowercase(text)
    text = collapse_whitespace(text)
    return text


# TODO: elaborate it
def basic_turkish_cleaners(text):
    """Pipeline for Turkish text"""
    text = text.replace("I", "ı")
    text = lowercase(text)
    text = collapse_whitespace(text)
    return text


def english_cleaners(text):
    """Pipeline for English text, including number and abbreviation expansion."""
    # text = convert_to_ascii(text)
    text = lowercase(text)
    text = expand_time_english(text)
    text = expand_numbers(text)
    text = expand_abbreviations(text)
    text = replace_symbols(text)
    text = remove_aux_symbols(text)
    text = collapse_whitespace(text)
    return text


def french_cleaners(text):
    """Pipeline for French text. There is no need to expand numbers, phonemizer already does that"""
    text = expand_abbreviations(text, lang="fr")
    text = lowercase(text)
    text = replace_symbols(text, lang="fr")
    text = remove_aux_symbols(text)
    text = collapse_whitespace(text)
    return text


def portuguese_cleaners(text):
    """Basic pipeline for Portuguese text. There is no need to expand abbreviation and
    numbers, phonemizer already does that"""
    text = lowercase(text)
    text = replace_symbols(text, lang="pt")
    text = remove_aux_symbols(text)
    text = collapse_whitespace(text)
    return text


# Added by LBC
def spanish_cleaners(text):
    """Basic pipeline for Spanish text. There is no need to expand abbreviation and
    numbers, phonemizer already does that"""
    text = expand_abbreviations(text, lang="es")
    text = lowercase(text)
    text = expand_time_spanish(text)
    text = expand_numbers(text, lang="es")
    text = replace_symbols(text, lang="es")
    text = remove_aux_symbols(text)
    text = collapse_whitespace(text)
    return text


def chinese_mandarin_cleaners(text: str) -> str:
    """Basic pipeline for chinese"""
    text = replace_numbers_to_characters_in_text(text)
    return text


def phoneme_cleaners(text):
    """Pipeline for phonemes mode, including number and abbreviation expansion."""
    text = expand_numbers(text)
    # text = convert_to_ascii(text)
    text = expand_abbreviations(text)
    text = replace_symbols(text)
    text = remove_aux_symbols(text)
    text = collapse_whitespace(text)
    return text
