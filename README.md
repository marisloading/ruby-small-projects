# Basic Ruby Exercises

A small repository with all the small projects done in the Basic Ruby Projects from The Odin Project.

## Goal of these Projects

The goal of these projects is to successfully apply all I've learnt in the Ruby basics to complete small utilities, and understand how to create small features for future applications. The Odin Project has been instrumental in my journey to becoming a programmer, and although I have completed the Javascript course, ruby is providing a bigger challenge despite being overall easier than Javascript.

## The Ceaser Cipher

It does not take input, the script at the moment only does tests with the hard-coded method calls already in it. It takes a string, even strings that are more than one word, and takes a shift input, which will be the number used to shift the English alphabet to encrypt the string provided.

Currently it takes numbers that are higher or lower (including negatives) than the amount of letters in the English alphabet, by returning to the beginning of the alphabet (or end, if the shift number was a negative one) and loop around until the amount of letters passed equals the shift number provided.

### Difficulties

I ended up struggling a lot with this one. Hence why it seems rather rushed. I initially had more trouble actually rationalising how the method to scramble the word actually would work, and my pseudocode was rewritten many times in hopes of understanding the logic. Then when I finally understood what I had to do, I battled the complexity of it, as I missed many googles searches I could've done to simplify the code. Perhaps it was because I wanted to apply what I had already learnt, but that was a mistake, since I've learnt in every lesson to research and read documentation.

In the end, it does work. But upon seeing what other student had done for this project, I came to the conclusion that I got frustrated and ended up stubbornly complicating the code. Many other students used the ASCII methods, and I failed to remember or even think about that. Instead, I relied on two arrays of the entire English alphabet, one in lowercase and another is uppercase. This was not ideal.

I hope in my next projects, I am able to think more creatively to solve the problem required of me.
