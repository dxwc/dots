#! /usr/bin/env node

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let stdin = '';
process.stdin.on('data', data => stdin += data);
process.stdin.on('end', () =>
{
    let data = JSON.parse(stdin);
    console.log(data.description);
});
