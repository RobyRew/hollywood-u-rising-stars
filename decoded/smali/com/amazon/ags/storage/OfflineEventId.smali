.class public Lcom/amazon/ags/storage/OfflineEventId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Invalid:Lcom/amazon/ags/storage/OfflineEventId;


# instance fields
.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lcom/amazon/ags/storage/OfflineEventId;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/amazon/ags/storage/OfflineEventId;-><init>(J)V

    sput-object v0, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/amazon/ags/storage/OfflineEventId;->id:J

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    instance-of v2, p1, Lcom/amazon/ags/storage/OfflineEventId;

    if-eqz v2, :cond_0

    .line 55
    check-cast p1, Lcom/amazon/ags/storage/OfflineEventId;

    .line 57
    iget-wide v2, p1, Lcom/amazon/ags/storage/OfflineEventId;->id:J

    iget-wide v4, p0, Lcom/amazon/ags/storage/OfflineEventId;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/amazon/ags/storage/OfflineEventId;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/amazon/ags/storage/OfflineEventId;->id:J

    iget-wide v2, p0, Lcom/amazon/ags/storage/OfflineEventId;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
