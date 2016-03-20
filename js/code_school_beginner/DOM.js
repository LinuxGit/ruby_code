
list.appendChild(haskell);

var self = document.getElementById('to-be-removed');
var parent = self.parentElement;
parent.removeChild(self);

parent.removeChild(parent.children[0]);