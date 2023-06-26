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


public const string PROFILE_BASE_MESSAGEHEADER = "http://hl7.org/fhir/StructureDefinition/MessageHeader";
public const RESOURCE_NAME_MESSAGEHEADER = "MessageHeader";

# FHIR MessageHeader resource record.
#
# + resourceType - The type of the resource describes
# + eventUri - Code that identifies the event this message represents and connects it with its definition. Events defined as part of the FHIR specification have the system value 'http://terminology.hl7.org/CodeSystem/message-events'. Alternatively uri to the EventDefinition.
# + reason - Coded indication of the cause for the event - indicates a reason for the occurrence of the event that is a focus of this message.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + author - The logical author of the message - the person or device that decided the described event should happen. When there is more than one candidate, pick the most proximal to the MessageHeader. Can provide other authors in extensions.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + destination - The destination application which the message is intended for.
# + focus - The actual data of the message - a reference to the root/focus class of the event.
# + language - The base language in which the resource is written.
# + 'source - The source application from which this message originated.
# + eventCoding - Code that identifies the event this message represents and connects it with its definition. Events defined as part of the FHIR specification have the system value 'http://terminology.hl7.org/CodeSystem/message-events'. Alternatively uri to the EventDefinition.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + sender - Identifies the sending system to allow the use of a trust relationship.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + response - Information about the message that this message is a response to. Only present if this message is a response.
# + responsible - The person or organization that accepts overall responsibility for the contents of the message. The implication is that the message event happened under the policies of the responsible party.
# + enterer - The person or device that performed the data entry leading to this message. When there is more than one candidate, pick the most proximal to the message. Can provide other enterers in extensions.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + definition - Permanent link to the MessageDefinition for this message.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
@ResourceDefinition {
    resourceType: "MessageHeader",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/MessageHeader",
    elements: {
        "eventUri" : {
            name: "eventUri",
            dataType: uri,
            min: 1,
            max: 1,
            isArray: false,
            path: "MessageHeader.event[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/message-events"
        },
        "reason" : {
            name: "reason",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.reason",
            valueSet: "http://hl7.org/fhir/ValueSet/message-reason-encounter"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MessageHeader.extension"
        },
        "author" : {
            name: "author",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.author"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MessageHeader.modifierExtension"
        },
        "destination" : {
            name: "destination",
            dataType: MessageHeaderDestination,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MessageHeader.destination"
        },
        "focus" : {
            name: "focus",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MessageHeader.focus"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "source" : {
            name: "source",
            dataType: MessageHeaderSource,
            min: 1,
            max: 1,
            isArray: false,
            path: "MessageHeader.source"
        },
        "eventCoding" : {
            name: "eventCoding",
            dataType: Coding,
            min: 1,
            max: 1,
            isArray: false,
            path: "MessageHeader.event[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/message-events"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MessageHeader.contained"
        },
        "sender" : {
            name: "sender",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.sender"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.meta"
        },
        "response" : {
            name: "response",
            dataType: MessageHeaderResponse,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.response"
        },
        "responsible" : {
            name: "responsible",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.responsible"
        },
        "enterer" : {
            name: "enterer",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.enterer"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.implicitRules"
        },
        "definition" : {
            name: "definition",
            dataType: canonical,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.definition"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "MessageHeader.text"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type MessageHeader record {|
    *DomainResource;

    RESOURCE_NAME_MESSAGEHEADER resourceType = RESOURCE_NAME_MESSAGEHEADER;

    BaseMessageHeaderMeta meta = {
        profile : [PROFILE_BASE_MESSAGEHEADER]
    };
    uri eventUri;
    CodeableConcept reason?;
    Extension[] extension?;
    Reference author?;
    Extension[] modifierExtension?;
    MessageHeaderDestination[] destination?;
    Reference[] focus?;
    code language?;
    MessageHeaderSource 'source;
    Coding eventCoding;
    Resource[] contained?;
    Reference sender?;
    MessageHeaderResponse response?;
    Reference responsible?;
    Reference enterer?;
    uri implicitRules?;
    canonical definition?;
    string id?;
    Narrative text?;
    never...;
|};

@DataTypeDefinition {
    name: "BaseMessageHeaderMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseMessageHeaderMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/MessageHeader"];
    Coding[] security?;
    Coding[] tag?;
|};

# MessageHeaderResponseCode enum
public enum MessageHeaderResponseCode {
   CODE_CODE_FATAL_ERROR = "fatal-error",
   CODE_CODE_OK = "ok",
   CODE_CODE_TRANSIENT_ERROR = "transient-error"
}

# FHIR MessageHeaderSource datatype record.
#
# + endpoint - Identifies the routing target to send acknowledgements to.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + software - May include configuration or other information useful in debugging.
# + contact - An e-mail, phone, website or other contact point to use to resolve issues with message communications.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + name - Human-readable name for the source system.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'version - Can convey versions of multiple systems in situations where a message passes through multiple hands.
@DataTypeDefinition {
    name: "MessageHeaderSource",
    baseType: (),
    elements: {
        "endpoint": {
            name: "endpoint",
            dataType: urlType,
            min: 1,
            max: 1,
            isArray: false,
            description: "Identifies the routing target to send acknowledgements to.",
            path: "MessageHeader.source.endpoint"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "MessageHeader.source.extension"
        },
        "software": {
            name: "software",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "May include configuration or other information useful in debugging.",
            path: "MessageHeader.source.software"
        },
        "contact": {
            name: "contact",
            dataType: ContactPoint,
            min: 0,
            max: 1,
            isArray: false,
            description: "An e-mail, phone, website or other contact point to use to resolve issues with message communications.",
            path: "MessageHeader.source.contact"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "MessageHeader.source.modifierExtension"
        },
        "name": {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Human-readable name for the source system.",
            path: "MessageHeader.source.name"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "MessageHeader.source.id"
        },
        "version": {
            name: "version",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Can convey versions of multiple systems in situations where a message passes through multiple hands.",
            path: "MessageHeader.source.version"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type MessageHeaderSource record {|
    urlType endpoint;
    Extension[] extension?;
    string software?;
    ContactPoint contact?;
    Extension[] modifierExtension?;
    string name?;
    string id?;
    string 'version?;
|};

# FHIR MessageHeaderDestination datatype record.
#
# + endpoint - Indicates where the message should be routed to.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + receiver - Allows data conveyed by a message to be addressed to a particular person or department when routing to a specific application isn't sufficient.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + name - Human-readable name for the target system.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + target - Identifies the target end system in situations where the initial message transmission is to an intermediary system.
@DataTypeDefinition {
    name: "MessageHeaderDestination",
    baseType: (),
    elements: {
        "endpoint": {
            name: "endpoint",
            dataType: urlType,
            min: 1,
            max: 1,
            isArray: false,
            description: "Indicates where the message should be routed to.",
            path: "MessageHeader.destination.endpoint"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "MessageHeader.destination.extension"
        },
        "receiver": {
            name: "receiver",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Allows data conveyed by a message to be addressed to a particular person or department when routing to a specific application isn't sufficient.",
            path: "MessageHeader.destination.receiver"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "MessageHeader.destination.modifierExtension"
        },
        "name": {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Human-readable name for the target system.",
            path: "MessageHeader.destination.name"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "MessageHeader.destination.id"
        },
        "target": {
            name: "target",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the target end system in situations where the initial message transmission is to an intermediary system.",
            path: "MessageHeader.destination.target"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type MessageHeaderDestination record {|
    urlType endpoint;
    Extension[] extension?;
    Reference receiver?;
    Extension[] modifierExtension?;
    string name?;
    string id?;
    Reference target?;
|};

# FHIR MessageHeaderResponse datatype record.
#
# + identifier - The MessageHeader.id of the message to which this message is a response.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - Code that identifies the type of response to the message - whether it was successful or not, and whether it should be resent or not.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + details - Full details of any issues found in the message.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@DataTypeDefinition {
    name: "MessageHeaderResponse",
    baseType: (),
    elements: {
        "identifier": {
            name: "identifier",
            dataType: id,
            min: 1,
            max: 1,
            isArray: false,
            description: "The MessageHeader.id of the message to which this message is a response.",
            path: "MessageHeader.response.identifier"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "MessageHeader.response.extension"
        },
        "code": {
            name: "code",
            dataType: MessageHeaderResponseCode,
            min: 1,
            max: 1,
            isArray: false,
            description: "Code that identifies the type of response to the message - whether it was successful or not, and whether it should be resent or not.",
            path: "MessageHeader.response.code"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "MessageHeader.response.modifierExtension"
        },
        "details": {
            name: "details",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Full details of any issues found in the message.",
            path: "MessageHeader.response.details"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "MessageHeader.response.id"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type MessageHeaderResponse record {|
    id identifier;
    Extension[] extension?;
    MessageHeaderResponseCode code;
    Extension[] modifierExtension?;
    Reference details?;
    string id?;
|};

