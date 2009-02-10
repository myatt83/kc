/*
 * Copyright 2006-2008 The Kuali Foundation
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
package org.kuali.kra.irb.rules;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.bo.Organization;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.irb.bo.ProtocolLocation;
import org.kuali.kra.irb.document.ProtocolDocument;
import org.kuali.kra.irb.rule.AddProtocolLocationRule;
import org.kuali.kra.irb.rule.SaveProtocolLocationRule;
import org.kuali.kra.irb.rule.event.AddProtocolLocationEvent;
import org.kuali.kra.irb.rule.event.SaveProtocolLocationEvent;
import org.kuali.kra.service.OrganizationService;

public class ProtocolLocationRule extends ProtocolDocumentRule implements AddProtocolLocationRule, SaveProtocolLocationRule {

    private static final String ERROR_PROPERTY_ORGANIZATION_ID = "newProtocolLocation.organizationId"; 
    private static final String ERROR_PROPERTY_ORGANIZATION_TYPE_CODE = "newProtocolLocation.protocolOrganizationTypeCode"; 
    
    /**
     * Don't allow protocol location with an invalid organization id, organization type code, duplicate organization id
     * @see org.kuali.kra.irb.rule.AddProtocolLocationRule#processAddProtocolLocationBusinessRules(org.kuali.kra.irb.rule.event.AddProtocolLocationEvent)
     */
    public boolean processAddProtocolLocationBusinessRules(AddProtocolLocationEvent addProtocolLocationEvent) {
        boolean isValid = true;
        /**
         * check organization id 
         */
        String organizationId = addProtocolLocationEvent.getProtocolLocation().getOrganizationId();
        if (StringUtils.isBlank(organizationId)) {
            isValid = false;
            reportError(ERROR_PROPERTY_ORGANIZATION_ID, KeyConstants.ERROR_PROTOCOL_LOCATION_ORGANIZATION_ID_NOT_FOUND);
        }
        else if (isInvalidOrganizationId(organizationId)) {
            isValid = false;
            reportError(ERROR_PROPERTY_ORGANIZATION_ID, KeyConstants.ERROR_PROTOCOL_LOCATION_ORGANIZATION_ID_INVALID);
        }
        else if (isDuplicate((ProtocolDocument)addProtocolLocationEvent.getDocument(), organizationId)) {
            isValid = false;
            reportError(ERROR_PROPERTY_ORGANIZATION_ID, KeyConstants.ERROR_PROTOCOL_LOCATION_ORGANIZATION_ID_DUPLICATE);
        }

        /**
         * check organization type code 
         */
        String organizationTypeCode = addProtocolLocationEvent.getProtocolLocation().getProtocolOrganizationTypeCode();
        if (StringUtils.isBlank(organizationTypeCode)) {
            isValid = false;
            reportError(ERROR_PROPERTY_ORGANIZATION_TYPE_CODE, KeyConstants.ERROR_PROTOCOL_LOCATION_ORGANIZATION_TYPE_CODE_NOT_FOUND);
        }
        return isValid;
    }
    
 
    /**
     * Check if organization id is invalid.  
     * Connect OrganizationService to fetch organization name for input organization id
     * If a valid name is returned, organizationId is valid; otherwise it is invalid.
     * 
     * @param organizationId
     * @return true if invalid; false if valid
     */
    private boolean isInvalidOrganizationId(String organizationId) {
        boolean organizationIdInvalid = false;
        OrganizationService organizationService = KraServiceLocator.getService(OrganizationService.class);
        Organization organization = organizationService.getOrganization(organizationId);
        if(organization == null) {
            organizationIdInvalid = true;
        }
        return organizationIdInvalid;
    }

    /**
     * Check if new organization id already exists in the list.
     * 
     * @param document - protocol document
     * @param organizationId
     * @return true if it is a duplicate; otherwise false
     */
    private boolean isDuplicate(ProtocolDocument document, String organizationId) {
        for (ProtocolLocation protocolLocation : document.getProtocol().getProtocolLocations()) {
            if (StringUtils.equalsIgnoreCase(protocolLocation.getOrganizationId(), organizationId)) {
                return true;
            }
        }
        return false;        
    }

    /**
     * At least one organization must be entered.  
     * If the default value is removed, another organization must be added before user 
     * can save
     * @see org.kuali.kra.irb.rule.SaveProtocolLocationRule#processSaveProtocolLocationBusinessRules(org.kuali.kra.irb.rule.event.SaveProtocolLocationEvent)
     */
    public boolean processSaveProtocolLocationBusinessRules(SaveProtocolLocationEvent saveProtocolLocationEvent) {
        boolean isValid = true;
        ProtocolDocument protocolDocument = (ProtocolDocument)saveProtocolLocationEvent.getDocument();
        List<ProtocolLocation> protocolLocations = protocolDocument.getProtocol().getProtocolLocations();
        if(protocolLocations.size() == 0) {
            reportError(ERROR_PROPERTY_ORGANIZATION_ID, KeyConstants.ERROR_PROTOCOL_LOCATION_SHOULD_EXIST);
            isValid = false;
        }
        return isValid;
    }

}
