/* Minimal Object.assign polyfill for older browsers (IE11). */
if (typeof Object.assign !== "function") {
  Object.assign = function(target) {
    if (target == null) {
      throw new TypeError("Cannot convert undefined or null to object");
    }

    var to = Object(target);
    for (var index = 1; index < arguments.length; index++) {
      var nextSource = arguments[index];
      if (nextSource != null) {
        for (var nextKey in nextSource) {
          if (Object.prototype.hasOwnProperty.call(nextSource, nextKey)) {
            to[nextKey] = nextSource[nextKey];
          }
        }
      }
    }

    return to;
  };
}
