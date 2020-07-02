function setBlockEffect(effect) {
  document.querySelectorAll(".skeleton-block").forEach(el => {
    el.className = "skeleton-block";
    if (effect) {
      el.classList.add(`skeleton-effect-${effect}`);
    } else {
      el.classList.remove(`skeleton-effect-${effect}`);
      el.classList.remove("skeleton-block");
    }
  });
}

function setTextEffect(effect) {
  document.querySelectorAll(".skeleton-text").forEach(el => {
    el.className = "skeleton-text";
    if (effect) {
      el.classList.add(`skeleton-effect-${effect}`);
    } else {
      el.classList.remove(`skeleton-effect-${effect}`);
      el.classList.remove("skeleton-text");
    }
  });
}
