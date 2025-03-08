let currentIndex = 0;
let prevIndex = -1;
let slidesSize = 5

function showSlide(index, prevIndex) {
    const iframes = document.querySelectorAll('.carousel-inner iframe'); // Get all iframes

    iframes.forEach(i => i.style.display = 'none')
    iframes[index].style.display = 'block'
}

function nextSlide() {
    prevIndex = currentIndex;
    currentIndex = (currentIndex + 1) % slidesSize;
    showSlide(currentIndex);
}

function prevSlide() {
    prevIndex = currentIndex;
    currentIndex = (currentIndex - 1);
    if (currentIndex < 0) {
        currentIndex = slidesSize - 1;
    }
    showSlide(currentIndex, prevIndex);
}

// Initialize the first slide
showSlide(currentIndex, prevIndex);