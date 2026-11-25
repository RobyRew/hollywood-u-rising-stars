.class public Lcom/pixelberrystudios/hssandroid/LeanplumHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    const-string/jumbo v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 106
    if-ltz v0, :cond_0

    .line 107
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 109
    if-ltz v1, :cond_0

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 264
    const-string/jumbo v0, "LeanplumHelper"

    const-string/jumbo v1, "Dump Map"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 266
    check-cast v0, Ljava/lang/String;

    .line 267
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    const-string/jumbo v3, "LeanplumHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " value: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method protected static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    const-string/jumbo v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 126
    if-eq v2, v6, :cond_0

    .line 130
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    :try_start_0
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 138
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 140
    aget-object v3, v2, v1

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 141
    if-eq v3, v6, :cond_2

    .line 143
    aget-object v4, v2, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    aget-object v5, v2, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_2
    aget-object v3, v2, v1

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 153
    :catch_0
    move-exception v1

    .line 154
    const-string/jumbo v1, "LeanplumHelper"

    const-string/jumbo v2, "Error: Failed to decode URL parmeters!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkForAndNotifyOfDeepLink()V
    .locals 7

    .prologue
    .line 161
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string/jumbo v1, "LeanplumHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/LeanplumHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "LeanplumHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "URL action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v2, ""

    if-eq v1, v2, :cond_1

    .line 170
    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/LeanplumHelper;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 171
    invoke-static {v2}, Lcom/pixelberrystudios/hssandroid/LeanplumHelper;->a(Ljava/util/Map;)V

    .line 174
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 176
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 177
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 178
    const/4 v6, 0x0

    .line 179
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v6

    .line 181
    aget-object v0, v3, v6

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v6

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {v1, v3, v4}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsNotifyDeepLink(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 190
    :cond_1
    :goto_1
    return-void

    .line 188
    :cond_2
    const-string/jumbo v0, "LeanplumHelper"

    const-string/jumbo v1, "intent data: IS NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getLeanplumBooleanVariable(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 75
    const-string/jumbo v0, "isPromoStartingRewardActive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isPromoStartingRewardActive:Z

    .line 98
    :goto_0
    return v0

    .line 77
    :cond_0
    const-string/jumbo v0, "isViewFriendEnabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isViewFriendEnabled:Z

    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v0, "limitActionDurations"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->limitActionDurations:Z

    goto :goto_0

    .line 81
    :cond_2
    const-string/jumbo v0, "versionConflictUseUuid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->versionConflictUseUuid:Z

    goto :goto_0

    .line 83
    :cond_3
    const-string/jumbo v0, "versionConflictUseLocalIfServerNoUuid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->versionConflictUseLocalIfServerNoUuid:Z

    goto :goto_0

    .line 85
    :cond_4
    const-string/jumbo v0, "disableGoButton"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->disableGoButton:Z

    goto :goto_0

    .line 87
    :cond_5
    const-string/jumbo v0, "isAdvertisingEnabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 88
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isAdvertisingEnabled:Z

    goto :goto_0

    .line 89
    :cond_6
    const-string/jumbo v0, "isAppSpenderRewardEnabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isAppSpenderRewardEnabled:Z

    goto :goto_0

    .line 91
    :cond_7
    const-string/jumbo v0, "isClothingStoreConfigOverridden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isClothingStoreConfigOverridden:Z

    goto :goto_0

    .line 93
    :cond_8
    const-string/jumbo v0, "isWeeklyGoalsEnabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isWeeklyGoalsEnabled:Z

    goto :goto_0

    .line 95
    :cond_9
    const-string/jumbo v0, "isChatEnabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isChatEnabled:Z

    goto :goto_0

    .line 97
    :cond_a
    const-string/jumbo v0, "isPure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isPure:Z

    goto/16 :goto_0

    .line 101
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Leanplum boolean not defined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLeanplumFileVariable(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 194
    .line 196
    :try_start_0
    const-string/jumbo v0, "configQuestChainList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->e:Lcom/leanplum/Var;

    invoke-virtual {v0}, Lcom/leanplum/Var;->stream()Ljava/io/InputStream;

    move-result-object v0

    .line 205
    :goto_0
    if-eqz v0, :cond_3

    .line 206
    invoke-static {v0}, Lcom/google/a/c/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 211
    :goto_1
    return-object v0

    .line 198
    :cond_0
    const-string/jumbo v0, "characterConfigOverrideList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->f:Lcom/leanplum/Var;

    invoke-virtual {v0}, Lcom/leanplum/Var;->stream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    const-string/jumbo v0, "buildingConfigOverrideList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->g:Lcom/leanplum/Var;

    invoke-virtual {v0}, Lcom/leanplum/Var;->stream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Leanplum file not defined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getLeanplumFloatVariable(Ljava/lang/String;)F
    .locals 3

    .prologue
    .line 48
    const-string/jumbo v0, "promoStartingCoins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->promoStartingCoins:F

    .line 67
    :goto_0
    return v0

    .line 50
    :cond_0
    const-string/jumbo v0, "promoStartingRings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->promoStartingRings:F

    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v0, "promoStartingBooks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->promoStartingBooks:F

    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v0, "syncAutoFrequencySeconds"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->syncAutoFrequencySeconds:F

    goto :goto_0

    .line 56
    :cond_3
    const-string/jumbo v0, "syncCheckFrequencySeconds"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->syncCheckFrequencySeconds:F

    goto :goto_0

    .line 58
    :cond_4
    const-string/jumbo v0, "startingCoins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->startingCoins:F

    goto :goto_0

    .line 60
    :cond_5
    const-string/jumbo v0, "startingRings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->startingRings:F

    goto :goto_0

    .line 62
    :cond_6
    const-string/jumbo v0, "startingBooks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->startingBooks:F

    goto :goto_0

    .line 64
    :cond_7
    const-string/jumbo v0, "questDurationMultiplier"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 65
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->questDurationMultiplier:F

    goto :goto_0

    .line 66
    :cond_8
    const-string/jumbo v0, "partyDurationMultiplier"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    sget v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->partyDurationMultiplier:F

    goto :goto_0

    .line 70
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Leanplum float not defined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLeanplumStringVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    const-string/jumbo v0, "promoStartingMessage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->promoStartingMessage:Ljava/lang/String;

    .line 41
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "createAccountPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->createAccountPath:Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_1
    const-string/jumbo v0, "linkAccountPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->linkAccountPath:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_2
    const-string/jumbo v0, "authenticatePath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->authenticatePath:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_3
    const-string/jumbo v0, "syncGamePath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->syncGamePath:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_4
    const-string/jumbo v0, "getKeyPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getKeyPath:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_5
    const-string/jumbo v0, "verifyReceiptPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->verifyReceiptPath:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_6
    const-string/jumbo v0, "moreCurrencyMessage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->moreCurrencyMessage:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_7
    const-string/jumbo v0, "clothingStoreConfigOverrideProto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->clothingStoreConfigOverrideProto:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Leanplum string not defined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isLeanplumStarted()Z
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->k()Z

    move-result v0

    return v0
.end method

.method public static scheduleLeanplumStart(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 234
    .line 236
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/hssandroid/f;

    invoke-direct {v1, p0, p1}, Lcom/pixelberrystudios/hssandroid/f;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public static scheduleLeanplumStart(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 220
    .line 221
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/hssandroid/e;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/hssandroid/e;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public static scheduleSetUserAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 249
    .line 251
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/hssandroid/g;

    invoke-direct {v1, p0, p1}, Lcom/pixelberrystudios/hssandroid/g;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method
