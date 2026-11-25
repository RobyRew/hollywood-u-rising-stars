.class public Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;
.super Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAppFamilyId:Ljava/lang/String;

.field private mCode:Ljava/lang/String;

.field private mTokenId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->LOG_TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "AppId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "AuthorizationTokenId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 43
    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->setRowId(J)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mCode:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mAppFamilyId:Ljava/lang/String;

    .line 50
    iput-wide p3, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mTokenId:J

    .line 51
    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;
    .locals 8

    .prologue
    .line 159
    new-instance v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->getRowId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mAppFamilyId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mTokenId:J

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->clone()Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 104
    instance-of v1, p1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;

    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;

    .line 107
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mTokenId:J

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->getAuthorizationTokenId()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAppFamilyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mAppFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationTokenId()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mTokenId:J

    return-wide v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationCodeDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationCodeDataSource;
    .locals 1

    .prologue
    .line 96
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationCodeDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationCodeDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getValuesForInsert()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 86
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;->CODE:Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;->APP_FAMILY_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;->AUTHORIZATION_TOKEN_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-wide v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mTokenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mAppFamilyId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setAuthorizationTokenId(J)V
    .locals 1

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mTokenId:J

    .line 155
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mCode:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->setRowId(J)V

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ rowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->getRowId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mTokenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->getRowId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationCode;->mTokenId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    return-void
.end method
