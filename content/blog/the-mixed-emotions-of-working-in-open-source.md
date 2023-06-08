---
title: "The Mixed Emotions of Working in Open Source"
date: 2023-06-08T03:29:54-05:00
---

## When open source is great
I've been a developer and maintainer in the open source world for just over two years now, and I've got to say that I don't think there's much better of an ecosystem that you can be in as a developer/maintainer. Open-source simply *encourages* so much that makes project development so nice to be in:

### Issue reporting
Having your users report issues on your project is trivial, and things like GitHub make hopping in on issues as simple as opening the issue up and making a comment. It's extremely easy to toss ideas around with fellow users, and being able to know what's going on is an amazing place to be in.

### Contributions
Accepting contributions is *super easy*. Users have direct access to your code, so all they need to do is get familiar with the project (and depending on the complexity that might not even really be needed), send in a PR, and you're set.   

Not only does this benefit your project, but with so many projects going the open source route, it makes it highly approachable for new developers to get their hands in on big projects. Contrary to the proprietary world, any outside developer can give their hand in contributing, allowing for more views, more help, and overall letting projects be community-led and community-focused.
<br><br><br>
And these aren't the only benefits. In the event that a project were to go rogue, the community can simply branch off from the people who are in misconduct and keep everything moving forward. Did your favorite proprietary application decide to switch up pricing models, remove a favorite feature, or just seize development? I guess that sucks for you, because you don't have access to the code, and your best shot at getting what you want is to start anew.

For sure going from scratch isn't always a bad approach (and it's something I've had to do on some projects), but the plethora of benefits from being able to use already-existing, well-known and battle-tested code is something you can't deny the benefits of. Even proprietary applications are backboned off the shoulders of open source projects, whether that be the libraries they use or even the implementations of the programming languages they use. Being able to reuse code is simply something that helps to keep things moving forward, allowing people to focus on innovating instead of how to reimplement something again.

This is what makes open source so great! I don't think you can argue against the joy of watching a bunch of random people online work together to make something great, and the jumbled chaos of so many different people makes it amazing when a project starts to go places.

---

## Where things start to get clunky
With all that said, open source isn't always a smooth road. I've experienced this firsthand, and while I love doing the work that I do, there are a few things I've started to notice that make things frustrating to work with sometimes:

### 1. Keeping it balanced
One thing that the majority of people working in open source have to figure out is what time to spend on what projects. I've personally noticed sometimes that I don't have all the time I'd like to work on my projects, and I don't think this is completely due to lack of time management.

Open-source is something done as a side-gig for most. It doesn't matter what profession you're in - we all have busy lives from having day jobs, obligations with friends and family, and otherwise just trying to make sure we can avoid overworking ourselves from everything the world throws at us.

A place that strikes me hard right now is schooling. I've just finished high school, and I've seen there are some days that after the schoolwork you do, you just want to relax and not worry about much. Throughout high school, I didn't work much outside of a side-job that I did once a week, and even then the time crunch gets real, especially when you're preparing for college and trying to maintain decent grades. As I go off into a university I'm sure my time flexibility will only get tighter as I balance rigorous courses, apply for internships, and ultimately start my adult life where I figure out being independent and making it to where I'm the main person I rely on.

And this is just me - others have their own baskets keeping them busy throughout the day in ways I couldn't ever relate to.

So how does one get time in to work on open source, in what's effectively a hobby for most? The reality is sometimes you just don't. As I've seen in my own path through open source, it's definitely not the route you want to take, but with the limited time you have available every day, you learn to accept you can't always work on a project, and you learn to try real hard in the time that you *can* give to your projects.

### 2. The innovation hurdle
This next part is what's hitting me the most now that I have some extra free time over the summer.

Here's the list of the projects I'm working on heavily right now:

- [makedeb](https://github.com/makedeb/makedeb)
- [The Prebuilt-MPR](https://github.com/makedeb/prebuilt-mpr)
- [Celeste](https://github.com/hwittenborn/celeste)
- [Koca](https://github.com/koca-build) (A successor to makedeb, written in Rust and ***blazingly fast***)
- [husk](https://github.com/hwittenborn/husk) (A helper library needed for Koca)

Whenever you're reading this, I may have slowed down on some of those projects (and probably even stopped working on some), but chances are I've picked up some new ones too. (Things like the Koca project are going to end up being more than a single project as well, unlike that list makes it out to be - it'll have a website, docs, and likely other helper utilities.)

It's so easy to want to start a new project - you get a new idea that you love, and then you got to start working on it so the idea doesn't go to waste. You don't have to, but sometimes it's really easy to want to fill a niche that hasn't been entered yet, and that's been my main struggle right now.

A popular meme in the developer space is starting a project and then simply not finishing it because a new idea comes up. The meme comes in many forms but this one I found was a pretty good representation of it:

![The meme, I really hope you can't see this text because then it didn't load :(](https://ih1.redbubble.net/image.1387971786.5171/st,small,507x507-pad,600x600,f8f8f8.jpg?w=20)

The struggle for me is that I don't like quitting projects, even when I get new ones to start. This starts to pose an issue when your projects start to get even mildly popular - numerous bug reports start to fly in, and then the only way to get that stuff managed is to spend some solid hours (sometimes even days) working on a project.

This poses an issue when you're working on multiple projects though - you simply can't put a bunch of hours into a bunch of projects at the same time, especially when you're working on thought-intensive things that require a lot of attention, where bouncing back and forth would make it near impossible to get the things you're working on done.

This is something I'm trying to figure out **a lot** right now. As a developer you want your users to be happy with your projects, but when that issue count starts rising and you aren't focusing on any given project in favor of another, they just start piling up and then you have to figure out how to play catch-up. And yeah you do start to catch up when you get to working on that project you didn't focus on for a bit, but then the project you *were* primarily working on starts to clog up like the others, and now you're in the same position you were already in.

## Changing your mindset
Jan Lehnardt talks about in a blog post about [learning to stop caring](https://writing.jan.io/2017/03/06/sustainable-open-source-the-maintainers-perspective-or-how-i-learned-to-stop-caring-and-love-open-source.html) when working in open source. I think there's some good merit to what he talks about, but part of me doesn't want to settle with that too. I *want* to care about my users: I enjoy watching the skills I've gained be put to good use for others to benefit from. I *want* my software to succeed: and an integral part of that is *thinking about the user*. Without them, your project simply isn't going to go anywhere besides being useful to you.

And there's no problem with software being useful to just you, and honestly the lack of obligations to other people when you can live okie-dokie with bug-galoring code is kind of peace-inducing. But being able to share something cool you've made is amazing too - society is built around a cycle of using the works of others to help benefit your own, and being able to contribute to that is a great feeling.

There is a limit to how far this can go though. By all means putting in the grind to get stuff done can feel great. It's also how people keep on innovating - as the [Arch Wiki puts it](https://wiki.archlinux.org/title/getting_involved), an individual putting in a small cost can lead to a larger benefit for many. And when others can use those benefits, they can use that extra energy to contribute their own small-cost changes, leading to a domino-effect where a plethora of people can benefit greatly.

There's only so much one can do out of their own willpower though, and when that limit gets reached something has to change.

## So what's gotta change?
This is the main part of the article that I'm wanting to get to. There's all these problems, but what are the solutions? After thinking about this for a while, and seeing what a ton of others have had on how to handle the open source mindset, these are the conclusions I've come up to:

### Contribute!
I don't think I could ever finish explaining how effective this is. Contributing directly to the projects that you use can help *so much* in the maintainability and innovation that a project brings forth.

Not only do you help to bring more ideas to the table, but you also help to take some load off of existing maintainers. As projects get bigger, so do the maintenance costs. Through contributing you help existing maintainers to focus on issues that might take a while to solve, and help the community to have an overall better product for you all to use.

### Support
If you can't code, that's more than fine too! If you can help out in the project's community that's a fantastic way to help out. You can help people in issues, help to keep the community invested and interested in chat rooms like Discord, and just help to make sure everyone's on clear ground with each other on what's being worked on, and what's coming forth in the future of the project.

### Financials
By all means don't feel guilted into giving financial support to the projects you use, but if you're able to, helping a project through donations can be a really great way to ensure the longevity for it. Donations help to ensure the developers can keep focusing on the things you use, instead of the challenges life can throw at them. And through monetary support, you also make full-time open source work more of a reality, which helps the developers of the tools you use really hone in on making great products.

Donations can also help to fund projects directly for things like website hosting and developer tools. Some companies do offer free plans to open source projects for this kind of stuff, but when that isn't available funding works really well to reach those other areas.
<br><br><br>
If you aren't in the position to donate that's more than fine though, contributions and community support are both wondrous ways to keep a project moving successfully.

## Closing remarks
Regardless of the ways you have available to you, helping out the projects you use is a surefire way to keep them growing towards a healthy, sustainable, and bright future where everyone can benefit.

I'm going to keep thinking about the best ways to tackle all of my projects effectively for their communities because I couldn't picture myself anywhere else. This is definitely the place I want to be, and I'm so thankful for the communities that I've had the chance to build, and for everyone along the way whose helped to make that a reality.
