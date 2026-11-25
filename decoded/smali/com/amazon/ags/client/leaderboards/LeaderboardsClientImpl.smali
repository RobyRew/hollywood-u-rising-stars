.class public Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;
.super Lcom/amazon/ags/client/ClientBase;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;


# static fields
.field private static final UNKNOWN_VALUE:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private overlayClient:Lcom/amazon/ags/client/OverlayClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/amazon/ags/client/ClientBase;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/client/OverlayClient;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ClientBase;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    .line 57
    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Leaderboard;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->convertToLeaderboard(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Leaderboard;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Score;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->convertToScore(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Score;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static convertToLeaderboard(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Leaderboard;
    .locals 6

    .prologue
    .line 109
    const-string/jumbo v0, "LEADERBOARD_ID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string/jumbo v0, "LEADERBOARD_NAME"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string/jumbo v0, "LEADERBOARD_ICON_URL"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    const-string/jumbo v0, "LEADERBOARD_DISPLAY_TEXT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    const-string/jumbo v0, "LEADERBOARD_DATA_FORMAT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v3, :cond_0

    .line 119
    const-string/jumbo v3, "UNKNOWN"

    .line 123
    :cond_0
    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/amazon/ags/constants/ScoreFormat;->UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;

    invoke-virtual {v0}, Lcom/amazon/ags/constants/ScoreFormat;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_1
    invoke-static {v0}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v4

    .line 128
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method private convertToScore(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Score;
    .locals 8

    .prologue
    .line 245
    const-string/jumbo v0, "scoreValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 246
    const-string/jumbo v0, "rank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 247
    const-string/jumbo v0, "leaderboard"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    const-string/jumbo v0, "ALIAS"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string/jumbo v1, "playerId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string/jumbo v4, "avatarUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 251
    new-instance v4, Lcom/amazon/ags/client/player/PlayerImpl;

    invoke-direct {v4, v1, v0, v7}, Lcom/amazon/ags/client/player/PlayerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v1, Lcom/amazon/ags/client/leaderboards/ScoreImpl;

    invoke-direct/range {v1 .. v6}, Lcom/amazon/ags/client/leaderboards/ScoreImpl;-><init>(JLcom/amazon/ags/api/player/Player;ILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public varargs getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 74
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getLeaderboards called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$1;

    const-string/jumbo v1, "Get Leaderboards"

    invoke-direct {v0, p0, v1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$1;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$1;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 261
    :cond_0
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 262
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 263
    if-nez p1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getLocalPlayerScore called with null leaderboard ID; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-object v0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getLocalPlayerScore called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_2
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$4;

    const-string/jumbo v1, "Get Local Player Score"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$4;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V

    invoke-virtual {v0, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$4;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 303
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 304
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getPercentileRanks called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;

    const-string/jumbo v1, "Get Local Player Score"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V

    invoke-virtual {v0, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 198
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 199
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getScores called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;

    const-string/jumbo v1, "Get Local Player Score"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V

    invoke-virtual {v0, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public setOverlayClient(Lcom/amazon/ags/client/OverlayClient;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 67
    return-void
.end method

.method public varargs showLeaderboardOverlay(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 380
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 381
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showLeaderboardOverlay called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/ags/client/OverlayClient;->showLeaderboardOverlay(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 368
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 369
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showLeaderboardsOverlay called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/OverlayClient;->showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isReady:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 63
    return-void
.end method

.method public varargs submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p4}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 136
    new-instance v1, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 137
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "submitScore called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;

    const-string/jumbo v2, "Submit Score"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, p4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method
