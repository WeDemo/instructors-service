function getRandNum(context, events, done) {
  context.vars['courseId'] = Math.floor((Math.random()*10000000) + 1);
  return done();
}

module.exports = {
  getRandNum,
};
