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

public const string PROFILE_BASE_IMMUNIZATIONRECOMMENDATION = "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation";
public const RESOURCE_NAME_IMMUNIZATIONRECOMMENDATION = "ImmunizationRecommendation";

# FHIR ImmunizationRecommendation resource record.
#
# + resourceType - The type of the resource describes
# + date - The date the immunization recommendation(s) were created.
# + identifier - A unique identifier assigned to this particular recommendation record.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + recommendation - Vaccine administration recommendations.
# + language - The base language in which the resource is written.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + patient - The patient the recommendation(s) are for.
# + authority - Indicates the authority who published the protocol (e.g. ACIP).
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
@ResourceDefinition {
    resourceType: "ImmunizationRecommendation",
    baseType: DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
    elements: {
        "date" : {
            name: "date",
            dataType: dateTime,
            min: 1,
            max: 1,
            isArray: false,
            path: "ImmunizationRecommendation.date"
        },
        "identifier" : {
            name: "identifier",
            dataType: Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImmunizationRecommendation.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImmunizationRecommendation.extension"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImmunizationRecommendation.modifierExtension"
        },
        "recommendation" : {
            name: "recommendation",
            dataType: ImmunizationRecommendationRecommendation,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImmunizationRecommendation.recommendation"
        },
        "language" : {
            name: "language",
            dataType: code,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImmunizationRecommendation.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "contained" : {
            name: "contained",
            dataType: Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImmunizationRecommendation.contained"
        },
        "meta" : {
            name: "meta",
            dataType: Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImmunizationRecommendation.meta"
        },
        "patient" : {
            name: "patient",
            dataType: Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "ImmunizationRecommendation.patient"
        },
        "authority" : {
            name: "authority",
            dataType: Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImmunizationRecommendation.authority"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImmunizationRecommendation.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImmunizationRecommendation.id"
        },
        "text" : {
            name: "text",
            dataType: Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImmunizationRecommendation.text"
        }
    },
    serializers: {
        'xml: fhirResourceXMLSerializer,
        'json: fhirResourceJsonSerializer
    }
}
public type ImmunizationRecommendation record {|
    *DomainResource;

    RESOURCE_NAME_IMMUNIZATIONRECOMMENDATION resourceType = RESOURCE_NAME_IMMUNIZATIONRECOMMENDATION;

    BaseImmunizationRecommendationMeta meta = {
        profile : [PROFILE_BASE_IMMUNIZATIONRECOMMENDATION]
    };
    dateTime date;
    Identifier[] identifier?;
    Extension[] extension?;
    Extension[] modifierExtension?;
    @constraint:Array {
       minLength: 1
    }
    ImmunizationRecommendationRecommendation[] recommendation;
    code language?;
    Resource[] contained?;
    Reference patient;
    Reference authority?;
    uri implicitRules?;
    string id?;
    Narrative text?;
    never...;
|};

@DataTypeDefinition {
    name: "BaseImmunizationRecommendationMeta",
    baseType: Meta,
    elements: {},
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type BaseImmunizationRecommendationMeta record {|
    *Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    id versionId?;
    instant lastUpdated?;
    uri 'source?;
    canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"];
    Coding[] security?;
    Coding[] tag?;
|};

# FHIR ImmunizationRecommendationRecommendationDateCriterion datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - Date classification of recommendation. For example, earliest date to give, latest date to give, etc.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + value - The date whose meaning is specified by dateCriterion.code.
@DataTypeDefinition {
    name: "ImmunizationRecommendationRecommendationDateCriterion",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "ImmunizationRecommendation.recommendation.dateCriterion.extension"
        },
        "code": {
            name: "code",
            dataType: CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "Date classification of recommendation. For example, earliest date to give, latest date to give, etc.",
            path: "ImmunizationRecommendation.recommendation.dateCriterion.code"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "ImmunizationRecommendation.recommendation.dateCriterion.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "ImmunizationRecommendation.recommendation.dateCriterion.id"
        },
        "value": {
            name: "value",
            dataType: dateTime,
            min: 1,
            max: 1,
            isArray: false,
            description: "The date whose meaning is specified by dateCriterion.code.",
            path: "ImmunizationRecommendation.recommendation.dateCriterion.value"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type ImmunizationRecommendationRecommendationDateCriterion record {|
    Extension[] extension?;
    CodeableConcept code;
    Extension[] modifierExtension?;
    string id?;
    dateTime value;
|};

# FHIR ImmunizationRecommendationRecommendation datatype record.
#
# + supportingImmunization - Immunization event history and/or evaluation that supports the status and recommendation.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + forecastReason - The reason for the assigned forecast status.
# + seriesDosesPositiveInt - The recommended number of doses to achieve immunity.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + forecastStatus - Indicates the patient status with respect to the path to immunity for the target disease.
# + description - Contains the description about the protocol under which the vaccine was administered.
# + seriesDosesString - The recommended number of doses to achieve immunity.
# + supportingPatientInformation - Patient Information that supports the status and recommendation. This includes patient observations, adverse reactions and allergy/intolerance information.
# + doseNumberString - Nominal position of the recommended dose in a series (e.g. dose 2 is the next recommended dose).
# + contraindicatedVaccineCode - Vaccine(s) which should not be used to fulfill the recommendation.
# + series - One possible path to achieve presumed immunity against a disease - within the context of an authority.
# + doseNumberPositiveInt - Nominal position of the recommended dose in a series (e.g. dose 2 is the next recommended dose).
# + targetDisease - The targeted disease for the recommendation.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + dateCriterion - Vaccine date recommendations. For example, earliest date to administer, latest date to administer, etc.
# + vaccineCode - Vaccine(s) or vaccine group that pertain to the recommendation.
@DataTypeDefinition {
    name: "ImmunizationRecommendationRecommendation",
    baseType: (),
    elements: {
        "supportingImmunization": {
            name: "supportingImmunization",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Immunization event history and/or evaluation that supports the status and recommendation.",
            path: "ImmunizationRecommendation.recommendation.supportingImmunization"
        },
        "extension": {
            name: "extension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "ImmunizationRecommendation.recommendation.extension"
        },
        "forecastReason": {
            name: "forecastReason",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The reason for the assigned forecast status.",
            path: "ImmunizationRecommendation.recommendation.forecastReason"
        },
        "seriesDosesPositiveInt": {
            name: "seriesDosesPositiveInt",
            dataType: positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            description: "The recommended number of doses to achieve immunity.",
            path: "ImmunizationRecommendation.recommendation.seriesDoses[x]"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "ImmunizationRecommendation.recommendation.modifierExtension"
        },
        "forecastStatus": {
            name: "forecastStatus",
            dataType: CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "Indicates the patient status with respect to the path to immunity for the target disease.",
            path: "ImmunizationRecommendation.recommendation.forecastStatus"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Contains the description about the protocol under which the vaccine was administered.",
            path: "ImmunizationRecommendation.recommendation.description"
        },
        "seriesDosesString": {
            name: "seriesDosesString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "The recommended number of doses to achieve immunity.",
            path: "ImmunizationRecommendation.recommendation.seriesDoses[x]"
        },
        "supportingPatientInformation": {
            name: "supportingPatientInformation",
            dataType: Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Patient Information that supports the status and recommendation. This includes patient observations, adverse reactions and allergy/intolerance information.",
            path: "ImmunizationRecommendation.recommendation.supportingPatientInformation"
        },
        "doseNumberString": {
            name: "doseNumberString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Nominal position of the recommended dose in a series (e.g. dose 2 is the next recommended dose).",
            path: "ImmunizationRecommendation.recommendation.doseNumber[x]"
        },
        "contraindicatedVaccineCode": {
            name: "contraindicatedVaccineCode",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Vaccine(s) which should not be used to fulfill the recommendation.",
            path: "ImmunizationRecommendation.recommendation.contraindicatedVaccineCode"
        },
        "series": {
            name: "series",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "One possible path to achieve presumed immunity against a disease - within the context of an authority.",
            path: "ImmunizationRecommendation.recommendation.series"
        },
        "doseNumberPositiveInt": {
            name: "doseNumberPositiveInt",
            dataType: positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            description: "Nominal position of the recommended dose in a series (e.g. dose 2 is the next recommended dose).",
            path: "ImmunizationRecommendation.recommendation.doseNumber[x]"
        },
        "targetDisease": {
            name: "targetDisease",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The targeted disease for the recommendation.",
            path: "ImmunizationRecommendation.recommendation.targetDisease"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "ImmunizationRecommendation.recommendation.id"
        },
        "dateCriterion": {
            name: "dateCriterion",
            dataType: ImmunizationRecommendationRecommendationDateCriterion,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Vaccine date recommendations. For example, earliest date to administer, latest date to administer, etc.",
            path: "ImmunizationRecommendation.recommendation.dateCriterion"
        },
        "vaccineCode": {
            name: "vaccineCode",
            dataType: CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Vaccine(s) or vaccine group that pertain to the recommendation.",
            path: "ImmunizationRecommendation.recommendation.vaccineCode"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type ImmunizationRecommendationRecommendation record {|
    Reference[] supportingImmunization?;
    Extension[] extension?;
    CodeableConcept[] forecastReason?;
    positiveInt seriesDosesPositiveInt?;
    Extension[] modifierExtension?;
    CodeableConcept forecastStatus;
    string description?;
    string seriesDosesString?;
    Reference[] supportingPatientInformation?;
    string doseNumberString?;
    CodeableConcept[] contraindicatedVaccineCode?;
    string series?;
    positiveInt doseNumberPositiveInt?;
    CodeableConcept targetDisease?;
    string id?;
    ImmunizationRecommendationRecommendationDateCriterion[] dateCriterion?;
    CodeableConcept[] vaccineCode?;
|};

