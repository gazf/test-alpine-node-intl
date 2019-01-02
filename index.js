const dtf = new Intl.DateTimeFormat("ja-JP");
const fmt = dtf.format(new Date(2019, 1 - 1, 1));
console.log(fmt);
