# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LearnEx.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

LearnEx.Repo.insert!(%LearnEx.Problem{
  id: 1,
  title: "Nothing but the Truth",
  times_solved: 0,
  description: "This is a clojure form.  Enter a value which will make the form evaluate to true.  Don't over think it!  If you are confused, see the <a href='/directions'>getting started</a> page.  Hint  true is equal to true.",
  tags: [],
  difficulty: "elementary",
  approved: true,
  tests: ["(= __ true)"]
})