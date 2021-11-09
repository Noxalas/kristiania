# TK1104 Arbeidskrav
Created: 2021-11-01 13:33
Type: #type/subject/digital-technology 
Status: #status/

Skriv et kort essay (2-4 sider) om ARPA Net 
• Hvem laget det, og hvorfor  
• Hvilken påvirkning har dette hatt på den moderne verdenen  

Besvarelsen lastes opp som tekst i Canvas. Hvis du har skrevet besvarelsen i en tekstbehandler (Word) tar du copy/paste inn i Canvas for å levere. Det støttes ikke å laste opp dokumenter.

## Essay

# ARPA NET

### How the ARPANET was born

In 1969, an apparently insignificant experiment carried out in a lab in the UCLA (University of California in Los Angeles) would spark a revolution, the implications of which are still unfolding nearly five decades later.

Leonard Kleinrock, a Professor of Computer Science, and Charley Kline, one of his post-graduate students, were shut inside their lab, focusing all of their energy on what appeared to be a complex, yet merely technical problem. 

>How to establish a communication link between two computers hundreds of miles apart.

One of the computers was located at UCLA and the other at the SRI (Stanford Research Institute)

That two computers can 'talk' to each other and exchange information is the precisely kind of magic we take for granted in today's world of technological marvels.

After many frustrating attempts, Kline's computer was finally able to 'talk' to its counterpart at SRI. Kline was only able to send the 'L' and the 'O' of the command line 'LOGIN' before the system crashed, but this still marked an extremely important milestone.



### ARPANET begins to take shape

It was only in 1969, at UCLA (not that far from Santa Monica where Baran worked), that the first cornerstone of the Internet was finally laid, and the ARPANET, the first computer network was built.

Paradoxically, what had began a decade earlier as a military answer to a Cold War threat (the Sputnik), turned a completely different kind of network.

In the initial plan for the ARPANET presented at the CM Symposium in Gatlinburg during the October of 1967, Larry Roberts, the project leader, [listed a series of reasons](http://www.packet.cc/files/arpanet-computernet.html) to build the network. None of them were concerned with military issues. Instead, they looked towards sharing data load between computers, providing an electronic mail service, sharing data and programmes and finally, towards providing a service to log in and use computers remotely.

In the original ARPANET Program Plan, published a year later (3 June 1968), [Roberts wrote](https://archive.org/stream/ResourceSharingComputerNetworks/AO1260.txt):
> The objective of this program is twofold (1) to develop techniques and obtain experience on interconnecting computers in such a way that a very broad class of interactions are possible, and (2) to improve and increase computer research productivity through resource sharing.

## Who should build it?

As originally envisioned by Baran, the ARPANET was set to be a fully distributed network that made use of routers (small computers called Interface Message Processors - IMPs) at every node to speed up communication between computers. Each router had four critical tasks to accomplish:

-   to receive packets of data from both the computers connected to it,
    
-   break the message blocks into 128 byte packets, or 1024 bits (In his study of packet-switching, Donald Davies [theorised](http://www.mpi-sws.org/~gummadi/teaching/sp07/sys_seminar/how_did_erope_blow_this_vision.pdf) that “the length of a packet can be any multiple of 128 bits up to 1,024 bits”. The 128-bit unit length guaranteed some measure of “flexibility to the size of packets” without ever overloading the computer while handling them.
    
-   add the destination and the sender address, and
    
-   use a “dynamically updated routing table”, or an updated map of the routes available in the network (“considering both line availability and queue lengths”) to send the packet over whichever free line was currently the fastest route toward the destination.

BBN (Bolt, Beranek and Newman) were chosen to build the IMPs for a four-site network by the end of 1969.

![[arpanet-original-sketch.jpg]]

The four IPMs were placed in:
- University of California Los Angeles (UCLA)
- University of California Santa Barbara (UCSB)
- The University of Utah
- Stanford Research Institute (SRI)



## Kilder
- [RFC | Message conventions](http://www.faqs.org/rfcs/rfc30.html)
- [Cisco | Annual Internet Report](https://www.cisco.com/c/en/us/solutions/executive-perspectives/annual-internet-report/infographic-c82-741491.html)


## References
1. 