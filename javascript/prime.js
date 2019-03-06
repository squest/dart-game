function isPrime (p) {
    var lim = Math.sqrt(p);
    var i = 3;
    while (i <= lim) {
        if (p % i === 0) {
            return false;
        }
        i += 2;
    }
    return true;
}