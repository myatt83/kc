/*
 * Copyright 2005-2013 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.meeting;

import org.kuali.kra.committee.document.CommitteeDocument;
import org.kuali.kra.common.committee.meeting.MeetingAddMinuteEventBase;
import org.kuali.rice.krad.document.Document;

/**
 * 
 * This class for the event to add committee schedule minute
 */
public class MeetingAddMinuteEvent extends MeetingAddMinuteEventBase {
    
    public MeetingAddMinuteEvent(String errorPathPrefix, CommitteeDocument document, MeetingHelper meetingHelper, ErrorType type) {
        super(errorPathPrefix, document, meetingHelper, type);
    }
    
    public MeetingAddMinuteEvent(String errorPathPrefix, Document document, MeetingHelper meetingHelper, ErrorType type) {
        this(errorPathPrefix, (CommitteeDocument) document, meetingHelper, type);
    }

    @Override
    protected MeetingAddMinuteRule getMeetingAddMinuteRuleInstanceHook() {
        return new MeetingAddMinuteRule();
    }
}
