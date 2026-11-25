.class public Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;
.super Lcom/amazon/ags/client/RequestResponseImpl;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/achievements/GetAchievementResponse;


# instance fields
.field private achievement:Lcom/amazon/ags/api/achievements/Achievement;


# direct methods
.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;->achievement:Lcom/amazon/ags/api/achievements/Achievement;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/achievements/Achievement;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p2}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;->achievement:Lcom/amazon/ags/api/achievements/Achievement;

    .line 20
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;->achievement:Lcom/amazon/ags/api/achievements/Achievement;

    .line 21
    return-void
.end method


# virtual methods
.method public final getAchievement()Lcom/amazon/ags/api/achievements/Achievement;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;->achievement:Lcom/amazon/ags/api/achievements/Achievement;

    return-object v0
.end method

.method public final getEventType()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xc

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amazon/ags/client/RequestResponseImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n Achievement - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;->achievement:Lcom/amazon/ags/api/achievements/Achievement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    return-object v0
.end method
