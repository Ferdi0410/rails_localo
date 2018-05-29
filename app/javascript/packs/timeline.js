import TweenLite from "greensock";
import TweenMax from "greensock";

$(".is-expandable").click(function(){
  var $this = $(this),
      $content = $(this).find(".content"),
      $contentSpan = $(this).find(".content span");

  if(!$this.hasClass("is-expanded")) {
    TweenLite.set($content, {height:"auto"});
    TweenLite.from($content, 0.4, {height:0, ease: Expo.easeOut});
    $($contentSpan).fadeIn('fast').css("display","inline-block");
    $this.addClass("is-expanded");
  } else {
    TweenLite.to($content, 0.4, {delay:0.09,height:0, ease: Expo.easeOut});
    $($contentSpan).fadeOut('fast');
    $this.removeClass("is-expanded");
  }
})