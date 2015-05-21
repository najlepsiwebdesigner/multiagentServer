/* 
 * File:   PreskumaneOblasti.h
 * Author: root
 *
 * Created on Utorok, 2015, marec 24, 23:10
 * 
 * collection of areas
 */

#ifndef PRESKUMANEOBLASTI_H
#define	PRESKUMANEOBLASTI_H

#include <mutex>
#include <list>

#include "Poloha.h"
#include "PreskumanaBunka.h"


class PreskumaneOblasti {
public:
    PreskumaneOblasti(int x, int y, int radius, int idSpustnia);
    
    void addPoloha(Poloha *poloha); // saves position of robot to equivalent area
    bool isCovered(int x, int y); // if area was covered by agent 
                                // X, Y - Indexes of internal array
    bool isCovered(Poloha *poloha); // if area was covered by agent
    bool isInTargetArea(int x, int y); // if position is in target area
                                // X, Y - Indexes of internal array
    bool isInTargetArea(Poloha *poloha);// if position is in target area
    float getCoverage(); //calculates actual coverage in percentage
    
    int getRadius();
    int getX();
    int getY();
    int getN();
    
    int convertXtoL(int x);
    int convertYtoK(int y);
    int getStredBunkyX(int x, int y); // return center of X,Y area
    int getStredBunkyY(int x, int y);
    
    void addInaccesibleKoorSur(KoordinacnaSur *sur); //collection of inaccesible areas
    bool isAccesible(KoordinacnaSur *sur); //chcecks if coordination position is on list of inaccesible areas

    std::list<PreskumanaBunka*> toList();
    void print();
    
    virtual ~PreskumaneOblasti();
private:
    int idSpustnia;
    int x0;
    int y0;
    int radius;
    int rozmerBunky = 1000;
    
    std::list<KoordinacnaSur*> inaccesibleList;
    
    bool *pole;
    int n;
    std::mutex m;
};

#endif	/* PRESKUMANEOBLASTI_H */

