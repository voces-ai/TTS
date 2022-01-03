function getTextValue(textId) {
    const container = q(textId)
    if (container) {
        return container.value
    }
    return ""
}
function q(selector) { return document.querySelector(selector) }
q('#text').focus()
function do_tts(e) {
    const text = q('#text').value
    const speaker_id = getTextValue('#speaker_id')
    const style_wav = getTextValue('#style_wav')
    if (text) {
        q('#message').textContent = 'Synthesizing...'
        q('#speak-button').disabled = true
        // q('#audio').hidden = true
        synthesize(text, speaker_id, style_wav)
    }
    e.preventDefault()
    return false
}
q('#speak-button').addEventListener('click', do_tts)
q('#text').addEventListener('keyup', function (e) {
    if (e.keyCode == 13) { // enter
        do_tts(e)
    }
})

const updateTooltip = () => {
  var $tooltip = $('[data-toggle="tooltip"]');

	// Methods
	function init() {
		$tooltip.tooltip();
	}

	// Events
	if ($tooltip.length) {
		init();
	}
}

function synthesize(text, speaker_id = "", style_wav = "") {
    fetch(`/api/tts?text=${encodeURIComponent(text)}&speaker_id=${encodeURIComponent(speaker_id)}&style_wav=${encodeURIComponent(style_wav)}`, { cache: 'no-cache' })
        .then(function (res) {
            if (!res.ok) throw Error(res.statusText)
            return res.blob()
        }).then(function (blob) {
            const element = `<tr>
            <th scope="row">
              <a href="#" class="" data-toggle="tooltip" data-original-title="${text}">
                ${(new Date()).toLocaleDateString('en-US')}
              </a>
              
            </th>
            <td>
              <div class="d-flex align-items-center">
                <audio controls>
                  <source src="${URL.createObjectURL(blob)}" type="audio/mpeg">
                </audio>
              </div>
            </td>
          </tr>`
          
          $('#results-table tbody').prepend(element)
          updateTooltip()
          q('#message').textContent = ''
          q('#speak-button').disabled = false
            // q('#audio').src = URL.createObjectURL(blob)
            // q('#audio').hidden = false
        }).catch(function (err) {
            q('#message').textContent = 'Error: ' + err.message
            q('#speak-button').disabled = false
        })
}