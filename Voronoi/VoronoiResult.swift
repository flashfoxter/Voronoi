//
//  VoronoiResult.swift
//  Voronoi
//
//  Created by Cooper Knaak on 6/1/16.
//  Copyright © 2016 Cooper Knaak. All rights reserved.
//

#if os(iOS)
import UIKit
#else
import Cocoa
#endif


//TODO: Make edges contain only points lying in the diagram.
//TODO: Make vertices contain only points lying in the diagram.

/**
 Enapsulates the result of a voronoi diagram.
 You can access the cells, edges, or individual vertices.
 */
public protocol VoronoiResult {
    
    ///The cells. Each cell contains the original voronoi point
    ///and the points that form the edges around this specific cell.
    var cells:[VoronoiCell] { get }
    
    ///The edges of the entire diagram. Each element is a pair of
    ///points corresponding to an edge on the diagram. Note that
    ///some edges can start or end outside the diagram.
    var edges:[(start:CGPoint, end:CGPoint)] { get }
    
    ///The vertices of the edges of the diagram. Note
    ///that the vertices are obtained from the edges,
    ///so some lie outside the diagram.
    var vertices:[CGPoint] { get }
    
    func tile() -> VoronoiResult
    
}
