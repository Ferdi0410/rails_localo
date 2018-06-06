import { Howl, Howler } from 'howler';

const autoplay = document.getElementById('audio-file');
const pauseElement = document.getElementById('pause');
const playElement = document.getElementById('play');
// const duration = document.getElementById('duration');


var sound;

function initHowl() {
  sound = new Howl({
    src: [autoplay.value],
    volume: 0.8,
  });

  sound.play();

  // sound.once("load", () => {
  //   console.log();
  //   console.log(sound.duration());
  // })
}

function play() {
  sound.play();
}

function pause() {
  sound.pause();
}

autoplay.addEventListener('change', initHowl);
pauseElement.addEventListener('click', pause);
playElement.addEventListener('click', play);





