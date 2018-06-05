import { Howl, Howler } from 'howler';
import SiriWave from 'siriwavejs';

const autoplay = document.getElementById('audio-file');
const pauseElement = document.getElementById('pause');
const playElement = document.getElementById('play');
// const duration = document.getElementById('duration');

var siriWave = new SiriWave({
  container: document.getElementById('siriwave'),
  width: window.innerWidth,
  height: 200,
  speed: 0.02,
  amplitude: 0.4,
  color: 'white',
  frequency: 1
});

var sound;

function initHowl() {
  sound = new Howl({
    src: [autoplay.value],
    volume: 0.8,
  });

  sound.play();
  siriWave.start();

  // sound.once("load", () => {
  //   console.log();
  //   console.log(sound.duration());
  // })
}

function play() {
  siriWave.start();
  sound.play();
}

function pause() {
  siriWave.stop();
  sound.pause();
}

autoplay.addEventListener('change', initHowl);
pauseElement.addEventListener('click', pause);
playElement.addEventListener('click', play);





