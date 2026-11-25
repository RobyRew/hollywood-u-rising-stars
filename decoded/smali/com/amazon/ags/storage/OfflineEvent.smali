.class public Lcom/amazon/ags/storage/OfflineEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_EVENT_TIME:Ljava/lang/String; = "eventTime"


# instance fields
.field private final eventJson:Lorg/json/JSONObject;

.field private final eventTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "eventTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 31
    iput-object p1, p0, Lcom/amazon/ags/storage/OfflineEvent;->eventJson:Lorg/json/JSONObject;

    .line 32
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/amazon/ags/storage/OfflineEvent;->eventTime:Ljava/util/Date;

    .line 33
    return-void
.end method


# virtual methods
.method public getEventTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/amazon/ags/storage/OfflineEvent;->eventTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/ags/storage/OfflineEvent;->eventJson:Lorg/json/JSONObject;

    return-object v0
.end method
