.class public abstract Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;
.super Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/identity/auth/device/token/Token;


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PRE_EXPIRATION_PERIOD:I = 0x12c


# instance fields
.field protected mAppFamilyId:Ljava/lang/String;

.field protected mCreationTime:Ljava/util/Date;

.field private mDirectedId:Ljava/lang/String;

.field protected mExpirationTime:Ljava/util/Date;

.field protected mMiscData:[B

.field protected mTokenValue:Ljava/lang/String;

.field protected mType:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->LOG_TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "AppId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Token"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "CreationTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ExpirationTime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "MiscData"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "directedId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mAppFamilyId:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mTokenValue:Ljava/lang/String;

    .line 79
    invoke-static {p4}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mCreationTime:Ljava/util/Date;

    .line 80
    invoke-static {p5}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mExpirationTime:Ljava/util/Date;

    .line 81
    iput-object p6, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mMiscData:[B

    .line 82
    iput-object p7, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mType:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    .line 83
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mDirectedId:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 160
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    check-cast p1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    .line 163
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mTokenValue:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mCreationTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mDirectedId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->LOG_TAG:Ljava/lang/String;

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
    .line 91
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mAppFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mCreationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 204
    const/4 v1, 0x0

    .line 206
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mMiscData:[B

    const-string/jumbo v4, "UTF8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    if-eqz v0, :cond_1

    .line 212
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 213
    array-length v3, v1

    .line 214
    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 218
    aget-object v4, v1, v0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v1, v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "unable to parse misc data"

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unable to parse misc data, key/value pairs do not match"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    return-object v2
.end method

.method public bridge synthetic getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AbstractDataSource;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;
    .locals 1

    .prologue
    .line 155
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mDirectedId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mExpirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalTimestamp()Landroid/text/format/Time;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mCreationTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 198
    return-object v0
.end method

.method public getMiscData()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mMiscData:[B

    return-object v0
.end method

.method public getTokenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mTokenValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mType:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeAsEnum()Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mType:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    return-object v0
.end method

.method public getValuesForInsert()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->TOKEN:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->CREATION_TIME:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->ISO8601:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mCreationTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->ISO8601:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->MISC_DATA:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mMiscData:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 146
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->TYPE:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mType:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->ALL_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->DIRECTED_ID:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;

    iget v2, v2, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$COL_INDEX;->colId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mDirectedId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method public isRemainingLifeAcceptable()Z
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 134
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/token/AbstractToken;->secsToMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppFamilyId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mAppFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 118
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mCreationTime:Ljava/util/Date;

    .line 119
    return-void
.end method

.method public setDirectedId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mDirectedId:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->truncateFractionalSeconds(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mExpirationTime:Ljava/util/Date;

    .line 124
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setRowId(J)V

    return-void
.end method

.method public setMiscData([B)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mMiscData:[B

    return-void
.end method

.method public setTokenValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mTokenValue:Ljava/lang/String;

    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ rowid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mAppFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->ISO8601:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mCreationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->ISO8601:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mExpirationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mType:Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken$AUTHZ_TOKEN_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", directedId=<obscured> }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->mTokenValue:Ljava/lang/String;

    return-object v0
.end method
