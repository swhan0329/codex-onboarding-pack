function statusForScore(score) {
  if (score > 80) return "great";
  if (score > 50) return "ok";
  return "check";
}

const sampleScores = [80, 79, 50, 49];

for (const score of sampleScores) {
  console.log(`${score}: ${statusForScore(score)}`);
}
