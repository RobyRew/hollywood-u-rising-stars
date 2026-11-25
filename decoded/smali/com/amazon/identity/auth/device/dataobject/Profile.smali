.class public Lcom/amazon/identity/auth/device/dataobject/Profile;
.super Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
.source "SourceFile"


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final EXPIRATION_TIME:I = 0x36ee80

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAppFamilyId:Ljava/lang/String;

.field protected mData:Ljava/lang/String;

.field protected mExpirationTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-class v0, Lcom/amazon/identity/auth/device/dataobject/Profile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ExpirationTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "AppId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/dataobject/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    .line 59
    return-void
.end method

.method private dataEquals(Lcom/amazon/identity/auth/device/dataobject/Profile;)Z
    .locals 5

    .prologue
    .line 186
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 190
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    .line 198
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private getDataFromJSON()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 170
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to parse profile data in database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    return-object v1

    .line 162
    :catch_1
    move-exception v0

    .line 163
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "JSONException while parsing profile information in database"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "JSONException while parsing profile information in database"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 97
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/amazon/identity/auth/device/dataobject/Profile;

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/Profile;

    .line 100
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/Profile;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->dataEquals(Lcom/amazon/identity/auth/device/dataobject/Profile;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile;->LOG_TAG:Ljava/lang/String;

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
    .line 113
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDataAsBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getDataFromJSON()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getRowId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValuesForInsert()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 66
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 68
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    aget-object v0, v0, v2

    sget-object v2, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->ISO8601:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->DATA:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v1

    .line 75
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    aget-object v2, v0, v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasExpired()Z
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x1

    .line 148
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    .line 152
    :cond_0
    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    .line 128
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/dataobject/Profile;->setRowId(J)V

    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ rowid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->ISO8601:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/Profile;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/Profile;->toLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
