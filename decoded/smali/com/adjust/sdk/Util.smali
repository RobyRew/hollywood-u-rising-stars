.class public Lcom/adjust/sdk/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'Z"

.field private static dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 328
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static createUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dateFormat(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 348
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adjust/sdk/Util;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 351
    :cond_0
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 97
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method protected static getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    const-string/jumbo v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 287
    const-string/jumbo v2, "aid"

    .line 288
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aid"

    aput-object v4, v2, v3

    .line 289
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 291
    if-nez v1, :cond_0

    move-object v0, v6

    .line 303
    :goto_0
    return-object v0

    .line 294
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 296
    goto :goto_0

    .line 299
    :cond_1
    const-string/jumbo v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 303
    goto :goto_0
.end method

.method private static getCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeStringShort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    and-int/lit8 v0, p0, 0xf

    .line 107
    packed-switch v0, :pswitch_data_0

    .line 115
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    const-string/jumbo v0, "phone"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string/jumbo v0, "tablet"

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDisplayHeight(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayWidth(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGpsAdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 357
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :catch_0
    move-exception v1

    .line 362
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v2

    .line 363
    const-string/jumbo v3, "Error getting Google Play Services advertising ID, (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeStringShort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getRawMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 204
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "android"

    return-object v0
.end method

.method private static getOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRawMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string/jumbo v0, "wlan0"

    invoke-static {v0}, Lcom/adjust/sdk/Util;->loadAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    const-string/jumbo v0, "eth0"

    invoke-static {v0}, Lcom/adjust/sdk/Util;->loadAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 223
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 224
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    if-nez v0, :cond_0

    .line 232
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static getScreenDensity(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 178
    if-nez v0, :cond_0

    .line 179
    const-string/jumbo v0, "unknown"

    .line 185
    :goto_0
    return-object v0

    .line 180
    :cond_0
    const/16 v1, 0x8c

    if-ge v0, v1, :cond_1

    .line 181
    const-string/jumbo v0, "low"

    goto :goto_0

    .line 182
    :cond_1
    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    .line 183
    const-string/jumbo v0, "high"

    goto :goto_0

    .line 185
    :cond_2
    const-string/jumbo v0, "medium"

    goto :goto_0
.end method

.method private static getScreenFormat(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    and-int/lit8 v0, p0, 0x30

    .line 163
    sparse-switch v0, :sswitch_data_0

    .line 169
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 165
    :sswitch_0
    const-string/jumbo v0, "long"

    goto :goto_0

    .line 167
    :sswitch_1
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getScreenSize(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    and-int/lit8 v0, p0, 0xf

    .line 146
    packed-switch v0, :pswitch_data_0

    .line 156
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 148
    :pswitch_0
    const-string/jumbo v0, "small"

    goto :goto_0

    .line 150
    :pswitch_1
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 152
    :pswitch_2
    const-string/jumbo v0, "large"

    goto :goto_0

    .line 154
    :pswitch_3
    const-string/jumbo v0, "xlarge"

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 66
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 67
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 69
    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 70
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 71
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 72
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getDeviceType(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 73
    invoke-static {}, Lcom/adjust/sdk/Util;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 74
    invoke-static {}, Lcom/adjust/sdk/Util;->getOsName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 75
    invoke-static {}, Lcom/adjust/sdk/Util;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 76
    invoke-static {v2}, Lcom/adjust/sdk/Util;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 77
    invoke-static {v2}, Lcom/adjust/sdk/Util;->getCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/16 v2, 0x8

    .line 78
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getScreenSize(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0x9

    .line 79
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getScreenFormat(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const/16 v0, 0xa

    .line 80
    invoke-static {v1}, Lcom/adjust/sdk/Util;->getScreenDensity(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0xb

    .line 81
    invoke-static {v1}, Lcom/adjust/sdk/Util;->getDisplayWidth(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0xc

    .line 82
    invoke-static {v1}, Lcom/adjust/sdk/Util;->getDisplayHeight(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 84
    const-string/jumbo v0, " "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 318
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 319
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 320
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/adjust/sdk/Util;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected static loadAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 260
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 263
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 267
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 268
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 272
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method protected static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    if-nez p0, :cond_1

    .line 335
    const/4 p0, 0x0

    .line 344
    :cond_0
    :goto_0
    return-object p0

    .line 338
    :cond_1
    const-string/jumbo v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 339
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const-string/jumbo v0, "\'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sanitizeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    .line 246
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    .line 250
    :cond_0
    const-string/jumbo v0, "\\s"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :goto_0
    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method private static sanitizeStringShort(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string/jumbo v0, "zz"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->sanitizeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
