.class public Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GC_Whispersync_JNI"

.field private static whispersyncClient:Lcom/amazon/ags/api/whispersync/WhispersyncClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static containsNumber(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 251
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "containsNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 254
    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 256
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    .line 270
    :goto_0
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableNumber;->isSet()Z

    move-result v0

    return v0

    .line 261
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static containsString(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 497
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "containsString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 499
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestString(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableString;

    move-result-object v0

    .line 500
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableString;->isSet()Z

    move-result v0

    return v0
.end method

.method public static decrementAccumulatingNumber(Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 83
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decrementAccumulatingNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 85
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 86
    invoke-interface {v0, p1, p2}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->decrement(D)V

    .line 87
    return-void
.end method

.method public static decrementAccumulatingNumber(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 62
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decrementAccumulatingNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 64
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 65
    invoke-interface {v0, p1, p2}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->decrement(J)V

    .line 66
    return-void
.end method

.method public static decrementAccumulatingNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 104
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decrementAccumulatingNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 106
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 107
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->decrement(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static flush()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->whispersyncClient:Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhispersyncClient;->flush()V

    .line 42
    return-void
.end method

.method public static getAccumulatingNumberAsBigDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccumulatingNumberAsBigDecimal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 92
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->asDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccumulatingNumberAsDouble(Ljava/lang/String;)D
    .locals 3

    .prologue
    .line 69
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccumulatingNumberAsDouble("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 71
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->asDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccumulatingNumberAsLong(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 48
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccumulatingNumberAsLong("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 50
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->asLong()J

    move-result-wide v0

    return-wide v0
.end method

.method protected static final getLowestLevelElementAsMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;
    .locals 4

    .prologue
    .line 600
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 601
    sget-object v0, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->whispersyncClient:Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhispersyncClient;->getGameData()Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v1

    .line 602
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 603
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v1

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_0
    return-object v1
.end method

.method protected static getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 619
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected static getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;
    .locals 4

    .prologue
    .line 609
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 610
    sget-object v0, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->whispersyncClient:Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhispersyncClient;->getGameData()Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v1

    .line 611
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 612
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v1

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_0
    return-object v1
.end method

.method public static final getMapKeys(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 593
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelElementAsMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 594
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getMapKeys()Ljava/util/Set;

    move-result-object v0

    .line 595
    const-string/jumbo v1, "GC_Whispersync_JNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMapKeys("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMaxSizeNumberList(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 431
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMaxSizeNumberList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 434
    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 436
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 447
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    .line 449
    :goto_0
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;->getMaxSize()I

    move-result v0

    return v0

    .line 441
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 444
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMaxSizeStringList(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 528
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMaxSizeStringList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 530
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestStringList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableStringList;

    move-result-object v0

    .line 531
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableStringList;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public static getNumberAsBigDecimal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNumberAsBigDecimal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 208
    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 210
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    .line 224
    :goto_0
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableNumber;->asDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNumberAsDouble(Ljava/lang/String;I)D
    .locals 3

    .prologue
    .line 160
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNumberAsDouble("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 163
    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 165
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    .line 179
    :goto_0
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableNumber;->asDouble()D

    move-result-wide v0

    return-wide v0

    .line 170
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNumberAsLong(Ljava/lang/String;I)J
    .locals 3

    .prologue
    .line 114
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNumberAsLong("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 117
    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    .line 133
    :goto_0
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableNumber;->asLong()J

    move-result-wide v0

    return-wide v0

    .line 124
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getNumberListAsBigDecimal(Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 471
    invoke-interface {p0}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;->getValues()[Lcom/amazon/ags/api/whispersync/model/SyncableNumberElement;

    move-result-object v1

    .line 472
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 473
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 474
    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberElement;->asDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    return-object v2
.end method

.method public static getNumberListAsBigDecimals(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 365
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNumberListAsBigDecimals("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 368
    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 370
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    .line 383
    :goto_0
    invoke-static {v0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getNumberListAsBigDecimal(Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 378
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getNumberListAsDouble(Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;)[D
    .locals 6

    .prologue
    .line 462
    invoke-interface {p0}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;->getValues()[Lcom/amazon/ags/api/whispersync/model/SyncableNumberElement;

    move-result-object v1

    .line 463
    array-length v0, v1

    new-array v2, v0, [D

    .line 464
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 465
    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberElement;->asDouble()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    return-object v2
.end method

.method public static getNumberListAsDoubles(Ljava/lang/String;I)[D
    .locals 3

    .prologue
    .line 321
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNumberListAsDoubles("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 324
    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 326
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    .line 339
    :goto_0
    invoke-static {v0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getNumberListAsDouble(Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;)[D

    move-result-object v0

    return-object v0

    .line 331
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getNumberListAsLong(Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;)[J
    .locals 6

    .prologue
    .line 453
    invoke-interface {p0}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;->getValues()[Lcom/amazon/ags/api/whispersync/model/SyncableNumberElement;

    move-result-object v1

    .line 454
    array-length v0, v1

    new-array v2, v0, [J

    .line 455
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 456
    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberElement;->asLong()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_0
    return-object v2
.end method

.method public static getNumberListAsLongs(Ljava/lang/String;I)[J
    .locals 3

    .prologue
    .line 277
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNumberListAsLongs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 280
    invoke-static {p1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 282
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    .line 295
    :goto_0
    invoke-static {v0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getNumberListAsLong(Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;)[J

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 483
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 485
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestString(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableString;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringList(Lcom/amazon/ags/api/whispersync/model/SyncableStringList;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 542
    invoke-interface {p0}, Lcom/amazon/ags/api/whispersync/model/SyncableStringList;->getValues()[Lcom/amazon/ags/api/whispersync/model/SyncableStringElement;

    move-result-object v1

    .line 543
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 544
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 545
    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/amazon/ags/api/whispersync/model/SyncableStringElement;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_0
    return-object v2
.end method

.method public static getStringList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 507
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStringList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 509
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestStringList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableStringList;

    move-result-object v0

    .line 510
    invoke-static {v0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getStringList(Lcom/amazon/ags/api/whispersync/model/SyncableStringList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringListKeys(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 535
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStringListKeys("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelElementAsMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestStringListKeys()Ljava/util/Set;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getStringSet(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 555
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStringSet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 557
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getStringSet(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableStringSet;

    move-result-object v0

    .line 558
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableStringSet;->getValues()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getStringSet(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringSet(Ljava/util/Set;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/ags/api/whispersync/model/SyncableStringElement;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 585
    const/4 v0, 0x0

    .line 586
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/whispersync/model/SyncableStringElement;

    .line 587
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/model/SyncableStringElement;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    .line 589
    :cond_0
    return-object v3
.end method

.method public static getStringSetKeys(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStringSetKeys("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelElementAsMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 578
    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getStringSetKeys()Ljava/util/Set;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static incrementAccumulatingNumber(Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 76
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "incrementAccumulatingNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 78
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 79
    invoke-interface {v0, p1, p2}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->increment(D)V

    .line 80
    return-void
.end method

.method public static incrementAccumulatingNumber(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 55
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "incrementAccumulatingNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 57
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 58
    invoke-interface {v0, p1, p2}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->increment(J)V

    .line 59
    return-void
.end method

.method public static incrementAccumulatingNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "incrementAccumulatingNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 99
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getAccumulatingNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;

    move-result-object v0

    .line 100
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableAccumulatingNumber;->increment(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static initializeNativeHandler()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getWhispersyncClient()Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->whispersyncClient:Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    .line 34
    return-void
.end method

.method public static insertToNumberList(Ljava/lang/String;DI)V
    .locals 3

    .prologue
    .line 343
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertToNumberList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 346
    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 348
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    .line 361
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;->add(D)V

    .line 362
    return-void

    .line 353
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static insertToNumberList(Ljava/lang/String;JI)V
    .locals 3

    .prologue
    .line 299
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertToNumberList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 302
    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 304
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    .line 317
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;->add(J)V

    .line 318
    return-void

    .line 309
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 312
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static insertToNumberList(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 387
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertToNumberList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 390
    invoke-static {p2}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 392
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    .line 405
    :goto_0
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;->add(Ljava/lang/String;)V

    .line 406
    return-void

    .line 397
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static insertToStringList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 514
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertToStringList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 516
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestStringList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableStringList;

    move-result-object v0

    .line 517
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableStringList;->add(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public static insertToStringSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 569
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertToStringSet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 571
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getStringSet(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableStringSet;

    move-result-object v0

    .line 572
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableStringSet;->add(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public static setMaxSizeNumberList(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 409
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxSizeNumberList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 412
    invoke-static {p2}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 414
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 425
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    .line 427
    :goto_0
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;->setMaxSize(I)V

    .line 428
    return-void

    .line 419
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 422
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumberList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumberList;

    move-result-object v0

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setMaxSizeStringList(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 521
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxSizeStringList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 523
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestStringList(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableStringList;

    move-result-object v0

    .line 524
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableStringList;->setMaxSize(I)V

    .line 525
    return-void
.end method

.method public static setNumber(Ljava/lang/String;DI)V
    .locals 3

    .prologue
    .line 183
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 186
    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    .line 201
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/amazon/ags/api/whispersync/model/SyncableNumber;->set(D)V

    .line 202
    return-void

    .line 193
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setNumber(Ljava/lang/String;JI)V
    .locals 3

    .prologue
    .line 137
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 140
    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    .line 156
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/amazon/ags/api/whispersync/model/SyncableNumber;->set(J)V

    .line 157
    return-void

    .line 147
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setNumber(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 228
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 231
    invoke-static {p2}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->mergePolicyFromInt(I)Lcom/amazon/ags/jni/whispersync/MergePolicy;

    move-result-object v1

    .line 233
    sget-object v2, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler$1;->$SwitchMap$com$amazon$ags$jni$whispersync$MergePolicy:[I

    invoke-virtual {v1}, Lcom/amazon/ags/jni/whispersync/MergePolicy;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge policy ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getHighestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    .line 247
    :goto_0
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableNumber;->set(Ljava/lang/String;)V

    .line 248
    return-void

    .line 238
    :pswitch_1
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLowestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestNumber(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableNumber;

    move-result-object v0

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 490
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 492
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getLatestString(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableString;

    move-result-object v0

    .line 493
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableString;->set(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public static stringSetContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 562
    const-string/jumbo v0, "GC_Whispersync_JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stringSetContains("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelMap(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/GameDataMap;

    move-result-object v0

    .line 564
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->getLowestLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/GameDataMap;->getStringSet(Ljava/lang/String;)Lcom/amazon/ags/api/whispersync/model/SyncableStringSet;

    move-result-object v0

    .line 565
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/model/SyncableStringSet;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synchronize()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->whispersyncClient:Lcom/amazon/ags/api/whispersync/WhispersyncClient;

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhispersyncClient;->synchronize()V

    .line 38
    return-void
.end method
