// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerina/constraint;

public const string PROFILE_BASE_COVERAGEELIGIBILITYREQUEST = "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest";
public const RESOURCE_NAME_COVERAGEELIGIBILITYREQUEST = "CoverageEligibilityRequest";

# FHIR CoverageEligibilityRequest resource record.
#
# + resourceType - The type of the resource describes
# + insurance - Financial instruments for reimbursement for the health care products and services.
# + identifier - A unique identifier assigned to this coverage eligiblity request.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + item - Service categories or billable services for which benefit details and/or an authorization prior to service delivery may be required by the payor.
# + purpose - Code to specify whether requesting: prior authorization requirements for some service categories or billing codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
# + created - The date when this resource was created.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + priority - When the requestor expects the processor to complete processing.
# + servicedPeriod - The date or dates when the enclosed suite of services were performed or completed.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + supportingInfo - Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues.
# + provider - The provider which is responsible for the request.
# + insurer - The Insurer who issued the coverage in question and is the recipient of the request.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + patient - The party who is the beneficiary of the supplied coverage and for whom eligibility is sought.
# + enterer - Person who created the request.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + servicedDate - The date or dates when the enclosed suite of services were performed or completed.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + facility - Facility where the services are intended to be provided.
# + status - The status of the resource instance.
@ResourceDefinition {
    resourceType: "CoverageEligibilityRequest",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest",
    elements: {
        "insurance" : {
            name: "insurance",
            dataType: CoverageEligibilityRequestInsurance,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CoverageEligibilityRequest.insurance"
        },
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CoverageEligibilityRequest.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CoverageEligibilityRequest.extension"
        },
        "item" : {
            name: "item",
            dataType: CoverageEligibilityRequestItem,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CoverageEligibilityRequest.item"
        },
        "purpose" : {
            name: "purpose",
            dataType: CoverageEligibilityRequestPurpose,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CoverageEligibilityRequest.purpose",
            valueSet: "http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose|4.0.1"
        },
        "created" : {
            name: "created",
            dataType: dateTime,
            min: 1,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.created"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CoverageEligibilityRequest.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "priority" : {
            name: "priority",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.priority",
            valueSet: "http://hl7.org/fhir/ValueSet/process-priority"
        },
        "servicedPeriod" : {
            name: "servicedPeriod",
            dataType: Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.serviced[x]"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CoverageEligibilityRequest.contained"
        },
        "supportingInfo" : {
            name: "supportingInfo",
            dataType: CoverageEligibilityRequestSupportingInfo,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "CoverageEligibilityRequest.supportingInfo"
        },
        "provider" : {
            name: "provider",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.provider"
        },
        "insurer" : {
            name: "insurer",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.insurer"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.meta"
        },
        "patient" : {
            name: "patient",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.patient"
        },
        "enterer" : {
            name: "enterer",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.enterer"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.id"
        },
        "servicedDate" : {
            name: "servicedDate",
            dataType: date,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.serviced[x]"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.text"
        },
        "facility" : {
            name: "facility",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.facility"
        },
        "status" : {
            name: "status",
            dataType: CoverageEligibilityRequestStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "CoverageEligibilityRequest.status",
            valueSet: "http://hl7.org/fhir/ValueSet/fm-status|4.0.1"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type CoverageEligibilityRequest record {|
    *DomainResource;

    RESOURCE_NAME_COVERAGEELIGIBILITYREQUEST resourceType = RESOURCE_NAME_COVERAGEELIGIBILITYREQUEST;

    BaseCoverageEligibilityRequestMeta meta = {
        profile : [PROFILE_BASE_COVERAGEELIGIBILITYREQUEST]
    };
    CoverageEligibilityRequestInsurance[] insurance?;
    Identifier[] identifier?;
    Extension[] extension?;
    CoverageEligibilityRequestItem[] item?;
    @constraint:Array {
       minLength: 1
    }
    CoverageEligibilityRequestPurpose[] purpose;
    dateTime created;
    Extension[] modifierExtension?;
    code language?;
    CodeableConcept priority?;
    Period servicedPeriod?;
    Resource[] contained?;
    CoverageEligibilityRequestSupportingInfo[] supportingInfo?;
    Reference provider?;
    Reference insurer;
    Reference patient;
    Reference enterer?;
    uri implicitRules?;
    string id?;
    date servicedDate?;
    Narrative text?;
    Reference facility?;
    CoverageEligibilityRequestStatus status;
    never...;
|};

@DataTypeDefinition {
    name: "BaseCoverageEligibilityRequestMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseCoverageEligibilityRequestMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest"];
    Coding[] security?;
    Coding[] tag?;
|};

# FHIR CoverageEligibilityRequestInsurance datatype record.
#
# + coverage - Reference to the insurance card level information contained in the Coverage resource. The coverage issuing insurer will use these details to locate the patient's actual coverage within the insurer's information system.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + businessArrangement - A business agreement number established between the provider and the insurer for special business processing purposes.
# + focal - A flag to indicate that this Coverage is to be used for evaluation of this request when set to true.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@DataTypeDefinition {
    name: "CoverageEligibilityRequestInsurance",
    baseType: (),
    elements: {
        "coverage": {
            name: "coverage",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "Reference to the insurance card level information contained in the Coverage resource. The coverage issuing insurer will use these details to locate the patient's actual coverage within the insurer's information system.",
            path: "CoverageEligibilityRequest.insurance.coverage"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "CoverageEligibilityRequest.insurance.extension"
        },
        "businessArrangement": {
            name: "businessArrangement",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "A business agreement number established between the provider and the insurer for special business processing purposes.",
            path: "CoverageEligibilityRequest.insurance.businessArrangement"
        },
        "focal": {
            name: "focal",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "A flag to indicate that this Coverage is to be used for evaluation of this request when set to true.",
            path: "CoverageEligibilityRequest.insurance.focal"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "CoverageEligibilityRequest.insurance.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "CoverageEligibilityRequest.insurance.id"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type CoverageEligibilityRequestInsurance record {|
    Reference coverage;
    Extension[] extension?;
    string businessArrangement?;
    boolean focal?;
    Extension[] modifierExtension?;
    string id?;
|};

# FHIR CoverageEligibilityRequestSupportingInfo datatype record.
#
# + sequence - A number to uniquely identify supporting information entries.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + appliesToAll - The supporting materials are applicable for all detail items, product/servce categories and specific billing codes.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + information - Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@DataTypeDefinition {
    name: "CoverageEligibilityRequestSupportingInfo",
    baseType: (),
    elements: {
        "sequence": {
            name: "sequence",
            dataType: positiveInt,
            min: 1,
            max: 1,
            isArray: false,
            description: "A number to uniquely identify supporting information entries.",
            path: "CoverageEligibilityRequest.supportingInfo.sequence"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "CoverageEligibilityRequest.supportingInfo.extension"
        },
        "appliesToAll": {
            name: "appliesToAll",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "The supporting materials are applicable for all detail items, product/servce categories and specific billing codes.",
            path: "CoverageEligibilityRequest.supportingInfo.appliesToAll"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "CoverageEligibilityRequest.supportingInfo.modifierExtension"
        },
        "information": {
            name: "information",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.",
            path: "CoverageEligibilityRequest.supportingInfo.information"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "CoverageEligibilityRequest.supportingInfo.id"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type CoverageEligibilityRequestSupportingInfo record {|
    positiveInt sequence;
    Extension[] extension?;
    boolean appliesToAll?;
    Extension[] modifierExtension?;
    Reference information;
    string id?;
|};

# CoverageEligibilityRequestPurpose enum
public enum CoverageEligibilityRequestPurpose {
   CODE_PURPOSE_BENEFITS = "benefits",
   CODE_PURPOSE_DISCOVERY = "discovery",
   CODE_PURPOSE_AUTH_REQUIREMENTS = "auth-requirements",
   CODE_PURPOSE_VALIDATION = "validation"
}

# FHIR CoverageEligibilityRequestItemDiagnosis datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + diagnosisReference - The nature of illness or problem in a coded form or as a reference to an external defined Condition.
# + diagnosisCodeableConcept - The nature of illness or problem in a coded form or as a reference to an external defined Condition.
@DataTypeDefinition {
    name: "CoverageEligibilityRequestItemDiagnosis",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "CoverageEligibilityRequest.item.diagnosis.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "CoverageEligibilityRequest.item.diagnosis.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "CoverageEligibilityRequest.item.diagnosis.id"
        },
        "diagnosisReference": {
            name: "diagnosisReference",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The nature of illness or problem in a coded form or as a reference to an external defined Condition.",
            path: "CoverageEligibilityRequest.item.diagnosis.diagnosis[x]"
        },
        "diagnosisCodeableConcept": {
            name: "diagnosisCodeableConcept",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The nature of illness or problem in a coded form or as a reference to an external defined Condition.",
            path: "CoverageEligibilityRequest.item.diagnosis.diagnosis[x]"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type CoverageEligibilityRequestItemDiagnosis record {|
    Extension[] extension?;
    Extension[] modifierExtension?;
    string id?;
    Reference diagnosisReference?;
    CodeableConcept diagnosisCodeableConcept?;
|};

# CoverageEligibilityRequestStatus enum
public enum CoverageEligibilityRequestStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_CANCELLED = "cancelled",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# FHIR CoverageEligibilityRequestItem datatype record.
#
# + unitPrice - The amount charged to the patient by the provider for a single unit.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + quantity - The number of repetitions of a service or product.
# + modifier - Item typification or modifiers codes to convey additional context for the product or service.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + diagnosis - Patient diagnosis for which care is sought.
# + productOrService - This contains the product, service, drug or other billing code for the item.
# + provider - The practitioner who is responsible for the product or service to be rendered to the patient.
# + supportingInfoSequence - Exceptions, special conditions and supporting information applicable for this service or product line.
# + detail - The plan/proposal/order describing the proposed service in detail.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + category - Code to identify the general type of benefits under which products and services are provided.
# + facility - Facility where the services will be provided.
@DataTypeDefinition {
    name: "CoverageEligibilityRequestItem",
    baseType: (),
    elements: {
        "unitPrice": {
            name: "unitPrice",
            dataType: Money,
            min: 0,
            max: 1,
            isArray: false,
            description: "The amount charged to the patient by the provider for a single unit.",
            path: "CoverageEligibilityRequest.item.unitPrice"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "CoverageEligibilityRequest.item.extension"
        },
        "quantity": {
            name: "quantity",
            dataType: Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "The number of repetitions of a service or product.",
            path: "CoverageEligibilityRequest.item.quantity"
        },
        "modifier": {
            name: "modifier",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Item typification or modifiers codes to convey additional context for the product or service.",
            path: "CoverageEligibilityRequest.item.modifier"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "CoverageEligibilityRequest.item.modifierExtension"
        },
        "diagnosis": {
            name: "diagnosis",
            dataType: CoverageEligibilityRequestItemDiagnosis,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Patient diagnosis for which care is sought.",
            path: "CoverageEligibilityRequest.item.diagnosis"
        },
        "productOrService": {
            name: "productOrService",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "This contains the product, service, drug or other billing code for the item.",
            path: "CoverageEligibilityRequest.item.productOrService"
        },
        "provider": {
            name: "provider",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The practitioner who is responsible for the product or service to be rendered to the patient.",
            path: "CoverageEligibilityRequest.item.provider"
        },
        "supportingInfoSequence": {
            name: "supportingInfoSequence",
            dataType: positiveInt,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Exceptions, special conditions and supporting information applicable for this service or product line.",
            path: "CoverageEligibilityRequest.item.supportingInfoSequence"
        },
        "detail": {
            name: "detail",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The plan/proposal/order describing the proposed service in detail.",
            path: "CoverageEligibilityRequest.item.detail"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "CoverageEligibilityRequest.item.id"
        },
        "category": {
            name: "category",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Code to identify the general type of benefits under which products and services are provided.",
            path: "CoverageEligibilityRequest.item.category"
        },
        "facility": {
            name: "facility",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Facility where the services will be provided.",
            path: "CoverageEligibilityRequest.item.facility"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type CoverageEligibilityRequestItem record {|
    Money unitPrice?;
    Extension[] extension?;
    Quantity quantity?;
    CodeableConcept[] modifier?;
    Extension[] modifierExtension?;
    CoverageEligibilityRequestItemDiagnosis[] diagnosis?;
    CodeableConcept productOrService?;
    Reference provider?;
    positiveInt[] supportingInfoSequence?;
    Reference[] detail?;
    string id?;
    CodeableConcept category?;
    Reference facility?;
|};

