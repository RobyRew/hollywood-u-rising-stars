.class public Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;
.super Lcom/amazon/ags/jni/JniResponseHandler;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/jni/JniResponseHandler;",
        "Lcom/amazon/ags/api/AGResponseCallback",
        "<",
        "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "SubmitScoreJniResponseHandler"

    sput-object v0, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ags/jni/JniResponseHandler;-><init>(IJ)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;->onComplete(Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;)V
    .locals 4

    .prologue
    .line 30
    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "jniSubmitScores response - onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-wide v0, p0, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;->m_CallbackPointer:J

    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/api/ErrorCode;->ordinal()I

    move-result v2

    iget v3, p0, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;->m_DeveloperTag:I

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/ags/jni/leaderboards/LeaderboardsJni;->submitScoreResponseFailure(JII)V

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "jniSubmitScores response - onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-wide v0, p0, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;->m_CallbackPointer:J

    iget v2, p0, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;->m_DeveloperTag:I

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/ags/jni/leaderboards/LeaderboardsJni;->submitScoreResponseSuccess(Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;JI)V

    goto :goto_0
.end method
