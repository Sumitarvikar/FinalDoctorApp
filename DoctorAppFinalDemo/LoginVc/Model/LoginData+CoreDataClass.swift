//
//  LoginData+CoreDataClass.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//
//

import Foundation
import CoreData


public class LoginData: NSManagedObject  , NSCoding{

    public func encode(with aCoder: NSCoder) {
        
        aCoder.encode(name, forKey: LoginDataCodingKeys.name.rawValue)
        aCoder.encode(username, forKey: LoginDataCodingKeys.username.rawValue)
        aCoder.encode(email, forKey: LoginDataCodingKeys.email.rawValue)
        aCoder.encode(profileImage, forKey: LoginDataCodingKeys.profileImage.rawValue)
        aCoder.encode(resourceType, forKey: LoginDataCodingKeys.resourceType.rawValue)
        aCoder.encode(resourceId, forKey: LoginDataCodingKeys.resourceId.rawValue)
        aCoder.encode(termsAndConditions, forKey: LoginDataCodingKeys.termsAndConditions.rawValue)
        aCoder.encode(profileComplete, forKey: LoginDataCodingKeys.profileComplete.rawValue)
        aCoder.encode(preferredlanguages, forKey: LoginDataCodingKeys.preferredlanguages.rawValue)
        aCoder.encode(permissions, forKey: LoginDataCodingKeys.permissions.rawValue)
        aCoder.encode(passwordResetRequired, forKey: LoginDataCodingKeys.passwordResetRequired.rawValue)
        aCoder.encode(id, forKey: LoginDataCodingKeys.id.rawValue)
        aCoder.encode(rolename, forKey: LoginDataCodingKeys.rolename.rawValue)
        aCoder.encode(notificationToken, forKey: LoginDataCodingKeys.notificationToken.rawValue)
        aCoder.encode(osType, forKey: LoginDataCodingKeys.osType.rawValue)
        aCoder.encode(signInCount, forKey: LoginDataCodingKeys.signInCount.rawValue)
        aCoder.encode(authToken, forKey: LoginDataCodingKeys.authToken.rawValue)
        aCoder.encode(deviceId, forKey: LoginDataCodingKeys.deviceId.rawValue)
        aCoder.encode(apiKey, forKey: LoginDataCodingKeys.apiKey.rawValue)
        aCoder.encode(clinicExist, forKey: LoginDataCodingKeys.clinicExist.rawValue)
//        aCoder.encode(incompleteClinic, forKey: LoginDataCodingKeys.incompleteClinic.rawValue)
//        aCoder.encode(resource, forKey: LoginDataCodingKeys.resource.rawValue)
        aCoder.encode(cityOfPractice, forKey: LoginDataCodingKeys.cityOfPractice.rawValue)
        aCoder.encode(dob, forKey: LoginDataCodingKeys.dob.rawValue)
        aCoder.encode(gender, forKey: LoginDataCodingKeys.gender.rawValue)
        aCoder.encode(mobile, forKey: LoginDataCodingKeys.mobile.rawValue)
    }
    
    public required convenience init?(coder aDecoder: NSCoder) {
        

        
//        guard let contextUserInfoKey = CodingUserInfoKey.context,
//            let managedObjectContext = CoreDataContextManager.sharedInstance()?.getSyncContext() as? NSManagedObjectContext,
//            let entityDescription = NSEntityDescription.entity(forEntityName:"LoginData", in: managedObjectContext) else {  fatalError()  }
//        self.init(entity: entityDescription, insertInto: CoreDataContextManager.sharedInstance()?.getSyncContext())

        self.init()
        
        self.id = aDecoder.decodeInt32(forKey: LoginDataCodingKeys.id.rawValue)
        self.username = aDecoder.decodeObject(forKey: LoginDataCodingKeys.username.rawValue) as? String
        self.email = aDecoder.decodeObject(forKey: LoginDataCodingKeys.email.rawValue) as? String
        self.profileImage = aDecoder.decodeObject(forKey: LoginDataCodingKeys.profileImage.rawValue) as? String
        self.resourceType = aDecoder.decodeObject(forKey: LoginDataCodingKeys.resourceType.rawValue) as? String
        self.resourceId = aDecoder.decodeInt32(forKey: LoginDataCodingKeys.resourceId.rawValue)
        self.termsAndConditions = aDecoder.decodeBool(forKey: LoginDataCodingKeys.termsAndConditions.rawValue)
        self.profileComplete = aDecoder.decodeBool(forKey: LoginDataCodingKeys.profileComplete.rawValue)
        self.preferredlanguages = (aDecoder.decodeObject(forKey: LoginDataCodingKeys.preferredlanguages.rawValue) as? [String])!
        self.permissions = aDecoder.decodeObject(forKey: LoginDataCodingKeys.permissions.rawValue) as? [String]
        self.passwordResetRequired = aDecoder.decodeBool(forKey: LoginDataCodingKeys.passwordResetRequired.rawValue)
        self.name = aDecoder.decodeObject(forKey: LoginDataCodingKeys.name.rawValue) as? String
        self.rolename = aDecoder.decodeObject(forKey: LoginDataCodingKeys.rolename.rawValue) as? String
        self.notificationToken = aDecoder.decodeObject(forKey: LoginDataCodingKeys.notificationToken.rawValue) as? String
        self.osType = aDecoder.decodeObject(forKey: LoginDataCodingKeys.osType.rawValue) as? String
        self.signInCount = aDecoder.decodeInt32(forKey: LoginDataCodingKeys.signInCount.rawValue)
        self.authToken = aDecoder.decodeObject(forKey: LoginDataCodingKeys.authToken.rawValue) as? String
        self.deviceId = aDecoder.decodeObject(forKey: LoginDataCodingKeys.deviceId.rawValue) as? String
        self.apiKey = aDecoder.decodeObject(forKey: LoginDataCodingKeys.apiKey.rawValue) as? String
        self.clinicExist = aDecoder.decodeBool(forKey: LoginDataCodingKeys.clinicExist.rawValue)
//        self.incompleteClinic = aDecoder.decodeObject(forKey: LoginDataCodingKeys.incompleteClinic.rawValue) as? IncompletClinic
//        self.resource = aDecoder.decodeObject(forKey: LoginDataCodingKeys.resource.rawValue) as? Resource
        self.cityOfPractice = aDecoder.decodeObject(forKey: LoginDataCodingKeys.cityOfPractice.rawValue) as? String
        self.dob = aDecoder.decodeObject(forKey: LoginDataCodingKeys.dob.rawValue) as? String
        self.gender = aDecoder.decodeObject(forKey: LoginDataCodingKeys.gender.rawValue) as? String
        self.mobile = aDecoder.decodeObject(forKey: LoginDataCodingKeys.mobile.rawValue) as? String

    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: LoginDataCodingKeys.self)
        
        try container.encode(id  , forKey: .id)
        try container.encode(username ?? "" , forKey: .username)
        try container.encode(email ?? "" , forKey: .email)
        try container.encode(profileImage ?? "" , forKey: .profileImage)
        try container.encode(resourceType ?? "" , forKey: .resourceType)
        try container.encode(resourceId  , forKey: .resourceId)
        try container.encode(termsAndConditions , forKey: .termsAndConditions)
        try container.encode(profileComplete , forKey: .profileComplete)
        try container.encode(preferredlanguages , forKey: .preferredlanguages)
        try container.encode(permissions , forKey: .permissions)
        try container.encode(passwordResetRequired , forKey: .passwordResetRequired)
        try container.encode(name ?? "" , forKey: .name)
        try container.encode(rolename ?? "" , forKey: .rolename)
        try container.encode(notificationToken ?? "" , forKey: .notificationToken)
        try container.encode(osType ?? "" , forKey: .osType)
        try container.encode(signInCount , forKey: .signInCount)
        try container.encode(authToken, forKey: .authToken)
        try container.encode(deviceId ?? "" , forKey: .deviceId)
        try container.encode(apiKey , forKey: .apiKey)
        try container.encode(clinicExist , forKey: .clinicExist)
//        try container.encode(incompleteClinic , forKey: .incompleteClinic)
//        try container.encode(resource , forKey: .resource)
        try container.encode(cityOfPractice ?? "" , forKey: .cityOfPractice)
        try container.encode(dob ?? "", forKey: .dob)
        try container.encode(gender ?? "", forKey: .gender)
        try container.encode(mobile ?? "", forKey: .mobile)
    }
    
    public required convenience init(from decoder: Decoder) throws {
        
//        guard let contextUserInfoKey = CodingUserInfoKey.context,
//            let managedObjectContext = decoder.userInfo[contextUserInfoKey] as? NSManagedObjectContext,
//            let entity = NSEntityDescription.entity(forEntityName:"LoginData", in: managedObjectContext) else {  fatalError()  }
        
//        self.init(entity: entity, insertInto: managedObjectContext)
    
        self.init()
        let values = try decoder.container(keyedBy: LoginDataCodingKeys.self)
        
        id = try values.decode(Int32.self, forKey: .id)
        username = try values.decodeIfPresent(String?.self, forKey: .username) as? String
        email = try values.decodeIfPresent(String?.self, forKey: .email) as? String
        profileImage = try values.decodeIfPresent(String?.self, forKey: .profileImage) as? String
        resourceType = try values.decodeIfPresent(String?.self, forKey: .resourceType) as? String

        if let val = try values.decodeIfPresent(Int32.self, forKey: .resourceId) as Int32?
        {
            resourceId = val
        }else
        {
            resourceId = 0
        }
        
        if let val = try values.decodeIfPresent(Bool.self, forKey: .termsAndConditions) as Bool?
        {
            termsAndConditions = val
        }else
        {
            termsAndConditions = false
        }
        
        if let val = try values.decodeIfPresent(Bool.self, forKey: .profileComplete) as Bool?
        {
            profileComplete = val
        }else
        {
            profileComplete = false
        }
        
        preferredlanguages = try values.decodeIfPresent([String]?.self, forKey: .preferredlanguages) as? [String]
        permissions = try values.decodeIfPresent([String]?.self, forKey: .permissions) as? [String]
        
        if let val = try values.decodeIfPresent(Bool.self, forKey: .passwordResetRequired) as Bool?
        {
            passwordResetRequired = val
        }else
        {
            passwordResetRequired = false
        }
        
        name = try values.decodeIfPresent(String?.self, forKey: .name) as? String
        notificationToken = try values.decodeIfPresent(String?.self, forKey: .notificationToken) as? String
        rolename = try values.decodeIfPresent(String?.self, forKey: .rolename) as? String
        osType = try values.decodeIfPresent(String?.self, forKey: .osType) as? String
        if let val = try values.decodeIfPresent(Int32.self, forKey: .signInCount) as Int32?
        {
            signInCount = val
        }else
        {
            signInCount = 0
        }
        authToken = try values.decodeIfPresent(String?.self, forKey: .authToken) as? String
        deviceId = try values.decodeIfPresent(String?.self, forKey: .deviceId) as? String
        apiKey = try values.decode(String?.self, forKey: .apiKey)

        if let val = try values.decodeIfPresent(Bool.self, forKey: .clinicExist) as Bool?
        {
            clinicExist = val
        }else
        {
            clinicExist = false
        }
//        incompleteClinic = try values.decodeIfPresent(IncompletClinic?.self, forKey: .incompleteClinic) as? IncompletClinic
//        resource = try values.decodeIfPresent(Resource?.self, forKey: .resource) as? Resource

        cityOfPractice = try values.decodeIfPresent(String?.self, forKey: .cityOfPractice) as? String
        dob = try values.decodeIfPresent(String?.self, forKey: .dob) as? String
        gender = try values.decodeIfPresent(String?.self, forKey: .gender) as? String
        mobile = try values.decodeIfPresent(String?.self, forKey: .mobile) as? String
    }
}
