.class final Lcom/sponsorpay/publisher/mbe/player/caching/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a()V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 230
    :sswitch_0
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a()V

    goto :goto_0

    .line 234
    :sswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    sget v1, Lcom/sponsorpay/publisher/mbe/player/caching/h;->c:I

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;I)I

    .line 235
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a()V

    .line 1252
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->c(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/g;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 239
    :sswitch_2
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a()V

    .line 240
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->stopSelf()V

    goto :goto_0

    .line 228
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x64 -> :sswitch_2
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
