

import SwiftUI


struct Playercard
{
      var Pl:[String]=[String]()
      
      var p:[String]=[String]()
      func disp()->Void
      {
            print("Generated Duplicate Card")
      }
      func display(i:Int)->Int
      {
            print("Generated ",Pl[i]," of ",p[i])
            return 0;
      }

}

struct ContentView: View
{
      
    @State var deck: Playercard=Playercard()
    @State var playercard="card"
      @State var player="heart"
      @State  var cp="card2"
      @State  var cpu="card2"
      @State  var cpucard="card2"
      @State var count:Int=0
      @State var cnt:Int=0
      var body: some View
      {
            ZStack
            {
               Image("background")
               
                  VStack
                  {
                     Spacer()
                     Image("logo")
                     Spacer()
                  
                           HStack
                            {
                               Spacer()
                               Image(cp)
                               Spacer()
                               Image(player)
                               Spacer()
                            }
     
                     HStack
                        {
                              Spacer()
                              Button
                              {
                                    let playerRand=Int.random(in: 2...14)
                                    let suitrand=Int.random(in: 11...14)
                                    cp=playercard+String(playerRand)
                                    cpucard=playercard+String(playerRand)
                                    cpu=playercard+String(suitrand)
                                    if deck.Pl.contains(cpucard)&&deck.p.contains(player)
                                    {
                                          deck.disp()
                                    }
                                    else
                                    {
                                    switch suitrand
                                    {
                                    case 11: player="club"
                                             if playerRand==11
                                             {
                                                cpucard="Ace"
                                             }
                                    case 12: player="spade"
                                             if playerRand==12
                                             {
                                                cpucard="Jack"
                                             }
                                    case 13: player="heart"
                                             if playerRand==13
                                             {
                                                cpucard="Queen"
                                             }
                                    case 14: player="diamond"
                                             if playerRand==14
                                             {
                                                cpucard="King"
                                             }
                                             default: print("Hello!")
                                    }
                                    deck.p.append(player)
                                    deck.Pl.append(cpucard)
                                    var a:Int=deck.display(i: count)
                                    count+=1
                                    }
                                    
                              } label:
                              {
                                    Image("dealbutton")
                              }
                              Spacer()
                              Button
                              {
                                    
                              } label:
                              {
                                    Image("dealbutton")
                              }
                              Spacer()
                        }
                        Spacer()
                  }
                  
            }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
          Group {
                ContentView()
          }
    }
}
