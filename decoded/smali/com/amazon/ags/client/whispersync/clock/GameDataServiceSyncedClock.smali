.class public Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/clock/Clock;


# static fields
.field private static final TAG:Ljava/lang/String; = "GC_Whipsersync"


# instance fields
.field private final clockSkewStorage:Lcom/amazon/ags/client/whispersync/clock/ClockSkewStorage;

.field private final localClock:Lcom/amazon/ags/client/whispersync/clock/Clock;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/client/whispersync/clock/Clock;Lcom/amazon/ags/client/whispersync/clock/ClockSkewStorage;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->localClock:Lcom/amazon/ags/client/whispersync/clock/Clock;

    .line 25
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->clockSkewStorage:Lcom/amazon/ags/client/whispersync/clock/ClockSkewStorage;

    .line 26
    return-void
.end method

.method private getCurrentLocalTimeSeconds()J
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->localClock:Lcom/amazon/ags/client/whispersync/clock/Clock;

    invoke-interface {v0}, Lcom/amazon/ags/client/whispersync/clock/Clock;->getCurrentTimeSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method private parseServerTime(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 60
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 61
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getCurrentTimeSeconds()J
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->getCurrentLocalTimeSeconds()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->clockSkewStorage:Lcom/amazon/ags/client/whispersync/clock/ClockSkewStorage;

    invoke-interface {v2}, Lcom/amazon/ags/client/whispersync/clock/ClockSkewStorage;->getClockSkew()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public synchronizeClock(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    const-string/jumbo v0, "GC_Whipsersync"

    const-string/jumbo v1, "Received a null date from the service, cannot synchronize with server clock"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->parseServerTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 45
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->getCurrentLocalTimeSeconds()J

    move-result-wide v2

    .line 46
    sub-long v0, v2, v0

    .line 47
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->clockSkewStorage:Lcom/amazon/ags/client/whispersync/clock/ClockSkewStorage;

    invoke-interface {v2, v0, v1}, Lcom/amazon/ags/client/whispersync/clock/ClockSkewStorage;->setClockSkew(J)V

    .line 48
    const-string/jumbo v2, "GC_Whipsersync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Measured clock skew as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "GC_Whipsersync"

    const-string/jumbo v2, "Failed to synchronize with server clock, received an invalid date format"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
