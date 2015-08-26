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
#  id: 1,
  title: "Nothing but the Truth",
  times_solved: 0,
  description: "This is a clojure form.  Enter a value which will make the form evaluate to true.  Don't over think it!  If you are confused, see the <a href='/directions'>getting started</a> page.  Hint  true is equal to true.",
  tags: [],
  difficulty: "elementary",
  approved: true,
  tests: ["(= __ true)"]
})


LearnEx.Repo.insert!(%LearnEx.Problem{
#  id: 2,
  title: "Lists: conj",
  times_solved: 0,
  description: "When operating on a list, the conj function will return a new list with one or more items \"added\" to the front.",
  tags: [],
  difficulty: "elementary",
  approved: true,
  tests: ["(= __ (conj '(2 3 4) 1))",
          "(= __ (conj '(3 4) 2 1))"]
})

LearnEx.Repo.insert!(%LearnEx.Problem{
#  id: 3,
  title: "Vectors: conj",
  times_solved: 0,
  description: "When operating on a Vector, the conj function will return a new vector with one or more items \"added\" to the end.",
  tags: [],
  difficulty: "elementary",
  approved: true,
  tests: ["(= __ (conj [1 2 3] 4))",
          "(= __ (conj [1 2] 3 4))"]
})

LearnEx.Repo.insert!(%LearnEx.Problem{
#  id: 4,
  title: "Intro to Sets",
  times_solved: 0,
  description: "Sets are collections of unique values.",
  tags: [],
  difficulty: "elementary",
  approved: true,
  tests: ["(= __ (set '(:a :a :b :c :c :c :c :d :d)))",
          "(= __ (clojure.set/union [:a :b :c] [:b :c :d]))"]
})

LearnEx.Repo.insert!(%LearnEx.Problem{
#  id: 5,
  title: "Sets: conj",
  times_solved: 0,
  description: "When operating on a set, the conj function returns a new set with one or more keys \"added\".",
  tags: [],
  difficulty: "elementary",
  approved: true,
  tests: ["(= (1 2 3 4 (conj (1 4 3) __))"]
})