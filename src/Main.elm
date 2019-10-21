import Slides exposing (..)


main = Slides.app

    slidesDefaultOptions

    [ md
        """
        # The Elm Programming Language
        _Functional Programming for frontend web development_
        """

    , md
        """
        ## This slide deck is made with Elm

        Check out the source on my github: _github.com/alexshadley_
        """

    , mdFragments
        [ "# What is Elm about?" 
        , "Evangelism?"
        , "Being a hipster?"
        , "Exclusivity?"
        ]

    , mdFragments
        [ """
            ## No!
            _Elm is about..._
          """
        , "* Writing reliable web applications"
        , "* Producing readable, maintainable code"
        , "* Great community"
        , "* Having fun!"
        ]
    
    , mdFragments
        [ "# How does Elm ccomplish this?"
        , "* No runtime excetions"
        , "* Type inference and extensible type system"
        , "* Friendly, helpful compiler"
        , "* Streamlined syntax"
        ]

    , mdFragments
        [ "## No runtime exceptions? For real?"
        , "_For real!_"
        , "The language is designed to catch all errors that could crash the program at compile time"
        ]
    
    , md
        """
        ## Preventing runtime errors: a case study

        ```
        case httpGet "spooky-url.com" of
          Just response ->
            Render response

          Nothing ->
            Render "request failed!"
        ```

        """
    
    , md
        """
        ## Extensible types

        ```
        type Suit = Clubs | Diamonds | Hearts | Spades
        type Rank = Ace | Two | Three | Four | Five 
                  | Six | Seven | Eight | Nine | Ten
                  | Jack | Queen | King

        type alias Card =
          { suit: Suit
          , rank: Rank
          }
        ```
        """

    , md
        """
        ```
        Backslashes always start escaped characters, but I do not recognize this one:

        47|             |> List.filter (\\e -> e.distance < 500)
                                        ^
        Maybe there is some typo?

        Hint: Valid escape characters include:

            \\n
            \\r
            \\t
            \\\"
            \\\'
            \\\\
            \\u{03BB}

        The last one lets encode ANY character by its Unicode code point, so use that
        for anything outside the ordinary six.
        ```
        """
    
    , md
        """
        # Introducing: Pipelines

        ```elm
        filterEvents : List Events -> List String
        filterEvents events =
          events
            |> List.filter (\\e -> e.distance < 1000)
            |> List.filter (\\e -> e.free == True)
            |> List.map (\\e -> e.url)
        ```
        """
    
    , mdFragments
        [ "# Elm does _not_ have:"
        , "* User-defined typeclasses"
        , "* Guards"
        , "* A bunch of fancy operators: $, <$>, `"
        ]
    
    , mdFragments
        [ "## Elm is _great_, but you should consider:"
        , "* Restricted to in-browser runtime"
        , "* Young ecosystem"
        , "* JS interop comes with friction"
        ]
    
    ]