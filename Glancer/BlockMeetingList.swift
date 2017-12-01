//
//  BlockMeetingList.swift
//  Glancer
//
//  Created by Dylan Hanson on 11/28/17.
//  Copyright © 2017 Dylan Hanson. All rights reserved.
//

import Foundation

struct BlockMeetingList
{
	var block: BlockID!
	var meetings: [Meeting] = []
}

extension BlockMeetingList
{
	func getClass() -> ClassMeeting?
	{
		for activity in self.meetings
		{
			if activity.type == .course && activity is ClassMeeting
			{
				return activity as? ClassMeeting
			}
		}
		return nil
	}
	
	func hasClass() -> Bool
	{
		return self.getClass() != nil
	}
}
