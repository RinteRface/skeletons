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

function setImageEffect(effect) {
  document.querySelectorAll(".skeleton-image").forEach(el => {
    el.className = "skeleton-image";
    if (effect) {
      el.classList.add(`skeleton-effect-${effect}`);
    } else {
      el.classList.remove(`skeleton-effect-${effect}`);
      el.classList.remove("skeleton-image");
    }
  });
}

function setAvatarEffect(effect) {
  document.querySelectorAll(".skeleton-avatar").forEach(el => {
    el.className = "skeleton-avatar";
    if (effect) {
      el.classList.add(`skeleton-effect-${effect}`);
    } else {
      el.classList.remove(`skeleton-effect-${effect}`);
      el.classList.remove("skeleton-avatar");
    }
  });
}
