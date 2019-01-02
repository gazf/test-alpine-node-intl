const dtf = new Intl.DateTimeFormat("ja", {month: "numeric", timeZone: "asia/tokyo"});
const fmt = dtf.format(new Date(2019, 1 - 1, 1));
console.log(fmt);
