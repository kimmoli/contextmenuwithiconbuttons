# contextmenuwithiconbuttons16:06 < attah> i'm waaay to retarded for  this
16:07 < attah> i started with ContextMenu{ Menuitem{...} MenuItem{..} }
16:07 < kimmoli> attah: you want to make contextmenu with e.g. three iconbuttons in row?  like in dockedpanel controls
                 example?
16:08 < coderus> attah: do something simple working first
16:08 < attah> kimmoli: sounds about right
16:08 < attah> i want it to open like a ContextMenu in whatever way works
16:09 < coderus> attah: contextmenu is for vertical scroll things
16:09 < attah> okay then :P
16:44 < attah> hmm, can't get docked panel to work like a contextmenu.. it's both always visible and underlaid to the
               listitem
16:45 < attah> open/expanded has no effect :(
16:57 < coderus> attah: it will never work as context menu because it's dock
16:59 < attah> it doesn't have to be exactly.. just remotely similar
17:11 < attah> I'm pretty sure i want each list item to be a drawer
17:11 < attah> Or am i just crazy?
17:16 < coderus> attah: you crazy. dock is single object on top of everything which can be cativated or deactivated
17:17 < kimmoli> attah: you can DIY one looking like meny
17:18 < attah> kimmoli: please do tell me how :)
17:18 < attah> can't even seem to change the size of the listitem
17:18 < attah> (dynamicly that is)
17:19 < attah> coderus: why do it have to be a single object?
17:24 < coderus> attah: by design
17:24 < attah> okay
17:24 < attah> i guess i'll try to conform to that design and see wher it goes
17:32 < attah> coderus: wrapping the SilicaListView in a Drawer is proper enough?
17:33 < kimmoli> attah: DIY solution https://github.com/kimmoli/contextmenuwithiconbuttons
