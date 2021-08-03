# diamond-hands

This is a stock portfolio tracking application. It runs in a container and requires the use of a MySQL database. The
schema for the database is provided in the `schema/` directory.

Currnetly it assumes your "home" currency is GBP, which is not great for many people, but works for me.

You will probably only find it useful if you have a significant number of different stocks in a number of different
brokerage accounts, as it will track them all & give you values by stock (across different accounts) as well as totals
by account and by stock currency.

It gets the stock prices every fifteen minutes by scraping them from the Yahoo Finance web site. At the rate I wanted to keep the
prices up-to-date (four times an hour), the query frequency you get with the FREE Yahoo API was not enough.

It will then dislpay the value of your holding totalled by stock ticker, including the day & week changes & %ages,
the real %age change, the average YoY %age change & your DCA for that stock. You can click on the stock to see the individual trades

There are also two graphs showing your total portfolio value, one showing just this week (at 15 minute intervals),
the other showing of-all-time value at daily intervals using the closing price for each day.

It will also show which stocks are in an open market & which are in markets that are currently closed.


# ToDo

- Should allow any home currency
- No ability (in the UI) to tell it when you buy & sell stocks
