import { Howl, Howler } from 'howler';

const autoplay = document.getElementById('audio-file');
const pauseElement = document.getElementById('pause');
const playElement = document.getElementById('play');
const durationElement = document.getElementById('audio-duration');
const timerElement = document.getElementById('audio-timer');
const progressElement = document.getElementById('audio-progress');
const barElement = document.getElementById('audio-bar');

var sound;
var duration;

function initHowl() {
  if (!sound) {
    sound = new Howl({
      src: [autoplay.value],
      volume: 0.8,
      onplay: function() {
        // Display the duration.
        durationElement.innerHTML = formatTime(Math.round(sound.duration()));
        // Start upating the progress of the track.
        requestAnimationFrame(step);
      },
      onend: function() {
        window.location.replace(window.location.pathname.replace('/play', ''));
      }
    });
    sound.play();
  }
}
function step() {
  // Determine our current seek position.
  var seek = sound.seek() || 0;
  timerElement.innerHTML = formatTime(Math.round(seek));
  progressElement.style.width = (((seek / sound.duration()) * 100) || 0) + '%';

  // If the sound is still playing, continue stepping.
  if (sound.playing()) {
    requestAnimationFrame(step);
  }
}


function formatTime(secs) {
  var minutes = Math.floor(secs / 60) || 0;
  var seconds = (secs - minutes * 60) || 0;
  return minutes + ':' + (seconds < 10 ? '0' : '') + seconds;
}

function play() {
  if (!sound.playing()) {
    sound.play();
  }
}

function pause() {
  if (sound.playing()) {
    sound.pause();
  }
}

autoplay.addEventListener('change', initHowl);
pauseElement.addEventListener('click', pause);
playElement.addEventListener('click', play);





