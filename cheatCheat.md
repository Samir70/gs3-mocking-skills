# Cheat Sheet

### Quick way to create a class that has no methods
```Ruby
DiaryEntry = Struct.new(:title, :contents)
#  => DiaryEntry 
de = DiaryEntry.new("title1", "contents1")
#  => #<struct DiaryEntry title="title1", contents="contents1">
de.class
#  => DiaryEntry 
```
