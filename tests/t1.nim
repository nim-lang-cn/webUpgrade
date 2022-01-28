include karax / prelude

proc createDom(): VNode =
  result = buildHtml:
    h1:
      text "Quick hummus recipe"
    p:
      text """
This recipe makes quick, tasty hummus, with no messing. It has been adapted from
a number of different recipes that I have read over the years."""
    p:
      text """
Hummus is a delicious thick paste used heavily in Greek and Middle Eastern
dishes. It is very tasty with salad, grilled meats and pitta breads."""
    h2:
      text "Ingredients"
    ul:
      li:
        text "1 can (400g) of chick peas (garbanzo beans)"
      li:
        text "175g of tahini"
      li:
        text "6 sundried tomatoes"
      li:
        text "Half a red pepper"
      li:
        text "A pinch of cayenne pepper"
      li:
        text "1 clove of garlic"
      li:
        text "A dash of olive oil"
    h2:
      text "Instructions"
    ol:
      li:
        text "Remove the skin from the garlic, and chop coarsely."
      li:
        text "Remove all the seeds and stalk from the pepper, and chop coarsely."
      li:
        text "Add all the ingredients into a food processor."
      li:
        text "Process all the ingredients into a paste."
      li:
        text "If you want a coarse \"chunky\" hummus, process it for a short time."
      li:
        text "If you want a smooth hummus, process it for a longer time."
    p:
      text """
For a different flavour, you could try blending in a small measure of lemon and
coriander, chili pepper, lime and chipotle, harissa and mint, or spinach and
feta cheese. Experiment and see what works for you."""
    h2:
      text "Storage"
    p:
      text """
Refrigerate the finished hummus in a sealed container. You should be able to use
it for about a week after you've made it. If it starts to become fizzy, you
should definitely discard it."""
    p:
      text """
Hummus is suitable for freezing; you should thaw it and use it within a couple
of months."""
    p:
      text "This liquid is"
      strong:
        text "highly toxic"
      text "— if you drink it,"
      strong:
        text "you may"
        em:
          text "die"
      text "."
    # scientific names
    p:
      text "The Ruby-throated Hummingbird ("
      italic:
        text "Archilochus colubris"
      text ") is the most common hummingbird in Eastern North America."
    # foreign words
    p:
      text "The menu was a sea of exotic words like"
      italic(lang = "uk-latn"):
        text "vatrushka"
      text ","
      italic(lang = "id"):
        text "nasi goreng"
      text "and"
      italic(lang = "fr"):
        text "soupe à l'oignon"
      text "."
    # a known misspelling
    p:
      text "Someday I'll learn how to"
      underlined(style = "text-decoration-line: underline; text-decoration-style: wavy;".toCss):
        text "spel"
      text "better."
    # Highlight keywords in a set of instructions
    ol:
      li:
        bold:
          text "Slice"
        text "two pieces of bread off the loaf."
      li:
        bold:
          text "Insert"
        text "a tomato slice and a leaf of lettuce between the slices of bread."
    # Generated by the server
    script(`type` = "application/json", id = "data"):
      text "{\"userId\":1234,\"userName\":\"John Doe\",\"memberSince\":\"2000-01-01T00:00:00.000Z\"}"
    # Static
    script:
      text """

const userInfo = JSON.parse(document.getElementById("data").text);
console.log("User information: %o", userInfo);
"""
    script:
      text """

const a = 3;
const b = -2;

console.log(a > 0 && b > 0);
// expected output: false
"""
    script(src = "javascript.js")
    #[
<p>Look at this cool image:</p>
<img border="0" src="pic_trulli.jpg" alt="Trulli">

    ]#
    p:
      text "This"
      # great text
      text "is a paragraph."

setRenderer createDom
