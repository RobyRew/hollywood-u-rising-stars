.class public Lcom/sponsorpay/publisher/mbe/player/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sponsorpay/mediation/SPMediationUserActivityListener;
.implements Lcom/sponsorpay/publisher/mbe/player/a/b;
.implements Ljava/lang/Runnable;


# instance fields
.field private A:I

.field private B:Lcom/sponsorpay/publisher/mbe/player/a/a;

.field private C:Lcom/sponsorpay/publisher/mbe/player/c;

.field private D:Z

.field private E:Z

.field private F:Z

.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/VideoView;

.field private d:Landroid/media/MediaPlayer;

.field private e:J

.field private f:Lcom/sponsorpay/d/c/b;

.field private g:Lcom/sponsorpay/d/a/b;

.field private h:Ljava/lang/Integer;

.field private i:Lcom/sponsorpay/d/b/b;

.field private j:J

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/TextView;

.field private volatile n:Z

.field private volatile o:J

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lcom/sponsorpay/publisher/mbe/player/j;

.field private s:I

.field private t:Ljava/util/concurrent/ScheduledExecutorService;

.field private u:Lcom/sponsorpay/publisher/mbe/player/f;

.field private final v:Lcom/sponsorpay/publisher/mbe/player/d;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/player/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/16 v6, 0x11

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->k:Z

    .line 110
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->n:Z

    .line 120
    iput v5, p0, Lcom/sponsorpay/publisher/mbe/player/a;->s:I

    .line 126
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->w:Z

    .line 127
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->x:Z

    .line 128
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->y:Z

    .line 131
    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->z:I

    .line 141
    iput-boolean v4, p0, Lcom/sponsorpay/publisher/mbe/player/a;->D:Z

    .line 142
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->E:Z

    .line 143
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->F:Z

    .line 149
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    .line 151
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->u:Lcom/sponsorpay/publisher/mbe/player/f;

    .line 152
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/player/a;->b:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/sponsorpay/publisher/mbe/player/a;->l:Ljava/lang/String;

    .line 154
    iput-object p5, p0, Lcom/sponsorpay/publisher/mbe/player/a;->q:Ljava/lang/String;

    .line 156
    iput-boolean v4, p0, Lcom/sponsorpay/publisher/mbe/player/a;->p:Z

    .line 157
    invoke-static {p6}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->p:Z

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1181
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    .line 1182
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    const-string/jumbo v1, "videoPlayer"

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1184
    new-instance v0, Lcom/sponsorpay/d/a/b;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sponsorpay/d/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    .line 1185
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    invoke-virtual {v0}, Lcom/sponsorpay/d/a/b;->a()I

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/sponsorpay/d/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/d/a/b;->setTag(Ljava/lang/Object;)V

    .line 1191
    new-instance v0, Lcom/sponsorpay/d/c/b;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sponsorpay/d/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    .line 1192
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1193
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    invoke-virtual {v1, v0}, Lcom/sponsorpay/d/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    invoke-virtual {v0}, Lcom/sponsorpay/d/c/b;->a()V

    .line 1197
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1198
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1199
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->setBackgroundColor(I)V

    .line 1203
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->addView(Landroid/view/View;)V

    .line 1204
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->addView(Landroid/view/View;)V

    .line 1273
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    .line 1276
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1277
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1279
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x50

    invoke-direct {v0, v5, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1281
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/sponsorpay/publisher/b;->q:Lcom/sponsorpay/publisher/b;

    invoke-static {v1}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    const v1, -0x4dc1c1c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1284
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1285
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1286
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "clickThroughHint"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 165
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/a/a;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/player/a/a;-><init>(Lcom/sponsorpay/publisher/mbe/player/a/b;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->B:Lcom/sponsorpay/publisher/mbe/player/a/a;

    .line 167
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 169
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/d;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/player/d;-><init>(Lcom/sponsorpay/publisher/mbe/player/a;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->v:Lcom/sponsorpay/publisher/mbe/player/d;

    .line 171
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->v:Lcom/sponsorpay/publisher/mbe/player/d;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/g;->g:Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/g;->ordinal()I

    move-result v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/d;->sendEmptyMessageDelayed(IJ)Z

    .line 2211
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2212
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2213
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2214
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2215
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/d/a/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2217
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    if-eqz v0, :cond_2

    .line 2218
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a(Lcom/sponsorpay/mediation/SPMediationUserActivityListener;)V

    .line 174
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Lcom/sponsorpay/publisher/mbe/player/e;JLjava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 594
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 596
    sget-object v2, Lcom/sponsorpay/publisher/mbe/player/b;->a:[I

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 609
    const-string/jumbo v0, "%s(\'play\', {tpn:\'%s\', result:\'%s\', id:\'%s\'})"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "local"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 612
    :goto_0
    return-object v0

    .line 598
    :pswitch_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "%s(\'play\', {tpn:\'%s\', result:\'%s\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "local"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 603
    :pswitch_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-double v2, v2

    .line 604
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "%s(\'play\', {tpn:\'%s\', result:\'%s\', currentTime:\'%.3f\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "local"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    const/4 v7, 0x3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x5

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->t:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->t:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->t:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 477
    :cond_0
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b(Landroid/content/Context;)V

    .line 478
    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 751
    if-eqz p0, :cond_0

    .line 752
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 754
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sponsorpay/publisher/mbe/player/g;)V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->v:Lcom/sponsorpay/publisher/mbe/player/d;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/g;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/d;->sendEmptyMessage(I)Z

    .line 744
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->x:Z

    if-nez v0, :cond_0

    .line 545
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->e:Lcom/sponsorpay/publisher/mbe/player/e;

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/e;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    const-string/jumbo v1, "SPBrandEngageVideoPlayerView"

    invoke-static {v1, p1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->u:Lcom/sponsorpay/publisher/mbe/player/f;

    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/mbe/player/f;->a(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->a()V

    .line 551
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->b()V

    .line 553
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 723
    invoke-static {p4}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {v0, p4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 736
    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->y:Z

    .line 559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 564
    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    invoke-virtual {v0}, Lcom/sponsorpay/d/c/b;->b()V

    .line 572
    :cond_2
    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    .line 573
    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    .line 574
    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    .line 575
    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->i:Lcom/sponsorpay/d/b/b;

    .line 576
    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    .line 577
    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    .line 578
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    if-eqz v0, :cond_3

    .line 579
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/j;->a()V

    .line 580
    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->C:Lcom/sponsorpay/publisher/mbe/player/c;

    if-eqz v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->C:Lcom/sponsorpay/publisher/mbe/player/c;

    invoke-interface {v0}, Lcom/sponsorpay/publisher/mbe/player/c;->e()V

    .line 585
    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->C:Lcom/sponsorpay/publisher/mbe/player/c;

    .line 587
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/mbe/player/a;)V
    .locals 2

    .prologue
    .line 67
    .line 2667
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/d/c/b;->setVisibility(I)V

    .line 67
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/d/a/b;->setTag(Ljava/lang/Object;)V

    .line 622
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->addView(Landroid/view/View;)V

    .line 623
    return-void
.end method

.method static synthetic c(Lcom/sponsorpay/publisher/mbe/player/a;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->e()V

    return-void
.end method

.method private d()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 628
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 630
    const-string/jumbo v2, "SPVideoPlayerOptionCloseButtonDelay"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 632
    const-string/jumbo v2, "SPBrandEngageVideoPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Delay for close button - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    if-ltz v0, :cond_0

    .line 640
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 635
    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    :goto_1
    const-string/jumbo v2, "SPBrandEngageVideoPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to load meta-data from Manifest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 640
    goto :goto_0

    .line 637
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/sponsorpay/publisher/mbe/player/a;)Lcom/sponsorpay/d/b/b;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->i:Lcom/sponsorpay/d/b/b;

    return-object v0
.end method

.method static synthetic e(Lcom/sponsorpay/publisher/mbe/player/a;)J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->o:J

    return-wide v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sponsorpay/d/c/b;->setVisibility(I)V

    .line 676
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->p:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->E:Z

    .line 686
    sget-object v0, Lcom/sponsorpay/publisher/b;->r:Lcom/sponsorpay/publisher/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->q:Ljava/lang/String;

    sget-object v2, Lcom/sponsorpay/publisher/b;->s:Lcom/sponsorpay/publisher/b;

    invoke-static {v2}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sponsorpay/publisher/b;->t:Lcom/sponsorpay/publisher/b;

    invoke-static {v3}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    const-string/jumbo v0, "displayCloseAlertDialog without alert"

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/sponsorpay/publisher/mbe/player/a;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->w:Z

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->v:Lcom/sponsorpay/publisher/mbe/player/d;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/g;->g:Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/g;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/d;->removeMessages(I)V

    .line 740
    return-void
.end method

.method static synthetic g(Lcom/sponsorpay/publisher/mbe/player/a;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->c()V

    return-void
.end method

.method static synthetic h(Lcom/sponsorpay/publisher/mbe/player/a;)V
    .locals 4

    .prologue
    .line 67
    .line 3645
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3647
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3648
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3649
    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/h;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/mbe/player/h;-><init>(Lcom/sponsorpay/publisher/mbe/player/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3663
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->E:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/sponsorpay/publisher/mbe/player/a;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->n:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/sponsorpay/publisher/mbe/player/c;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->C:Lcom/sponsorpay/publisher/mbe/player/c;

    .line 815
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x15

    .line 697
    const-string/jumbo v0, "SPBrandEngageVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBufferingStateChanged - state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    if-eqz p1, :cond_1

    .line 699
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->b:Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/g;)V

    .line 701
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 702
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->D:Z

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->a:Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/g;)V

    .line 708
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 712
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->D:Z

    goto :goto_0
.end method

.method public notifyOnBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 411
    iget-boolean v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->y:Z

    if-nez v2, :cond_1

    .line 412
    iget-boolean v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->k:Z

    if-nez v2, :cond_3

    .line 413
    iget-boolean v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->w:Z

    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->f()V

    :cond_0
    :goto_0
    move v0, v1

    .line 454
    :cond_1
    :goto_1
    return v0

    .line 422
    :cond_2
    const-string/jumbo v1, "notifyOnBackPressed()"

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/player/j;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/player/j;->b()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 429
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/j;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 433
    :cond_4
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    if-eqz v2, :cond_5

    .line 435
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sponsorpay/publisher/mbe/player/j;->setVisibility(I)V

    .line 438
    :cond_5
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_6

    .line 440
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 443
    :cond_6
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/player/j;->c()V

    .line 444
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/player/j;->e()V

    .line 447
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    invoke-static {v2, v1}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Landroid/view/View;Z)V

    .line 449
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->k:Z

    goto :goto_0
.end method

.method public notifyOnHomePressed()V
    .locals 1

    .prologue
    .line 406
    const-string/jumbo v0, "notifyOnHomePressed()"

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 388
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 390
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->E:Z

    .line 394
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->D:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const-string/jumbo v0, "displayCloseAlertDialog(): Close Video"

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->k:Z

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->f()V

    .line 381
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 296
    const-string/jumbo v0, "SPBrandEngageVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCompletion() - mediaPlayer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 299
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->b()V

    .line 300
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->a()V

    .line 303
    if-eqz p1, :cond_0

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->x:Z

    .line 306
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->c:Lcom/sponsorpay/publisher/mbe/player/e;

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/e;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->u:Lcom/sponsorpay/publisher/mbe/player/f;

    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/mbe/player/f;->a(Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->x:Z

    .line 310
    const-string/jumbo v0, "onCompletion - video playing more than total duration"

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 320
    const-string/jumbo v0, "SPBrandEngageVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "An error occurred, error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 324
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->g()V

    .line 325
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->f:Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/g;)V

    .line 326
    iput-boolean v3, p0, Lcom/sponsorpay/publisher/mbe/player/a;->F:Z

    .line 328
    return v3
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 224
    const-string/jumbo v0, "SPBrandEngageVideoPlayerView"

    const-string/jumbo v1, "onPrepared()"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->g()V

    .line 231
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->n:Z

    if-nez v0, :cond_1

    .line 233
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    .line 235
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 236
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->B:Lcom/sponsorpay/publisher/mbe/player/a/a;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/a/a;->a()V

    .line 239
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->e()V

    .line 241
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->e:J

    .line 242
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->B:Lcom/sponsorpay/publisher/mbe/player/a/a;

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/a/a;->a(J)V

    .line 244
    new-instance v0, Lcom/sponsorpay/d/b/b;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/d/b/b;-><init>(Landroid/content/Context;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->i:Lcom/sponsorpay/d/b/b;

    .line 245
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 246
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->i:Lcom/sponsorpay/d/b/b;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x33

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/sponsorpay/d/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->a:Lcom/sponsorpay/publisher/mbe/player/e;

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->e:J

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/e;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->u:Lcom/sponsorpay/publisher/mbe/player/f;

    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/mbe/player/f;->a(Ljava/lang/String;)V

    .line 251
    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->e:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    const-wide v2, 0x40cd4c0000000000L    # 15000.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->j:J

    .line 254
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->i:Lcom/sponsorpay/d/b/b;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->addView(Landroid/view/View;)V

    .line 257
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->h:Ljava/lang/Integer;

    .line 258
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->c()V

    .line 260
    iput-boolean v4, p0, Lcom/sponsorpay/publisher/mbe/player/a;->w:Z

    .line 2462
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->t:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2464
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->t:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 265
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->addView(Landroid/view/View;)V

    .line 269
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 333
    const-string/jumbo v0, "SPBrandEngageVideoPlayerView"

    const-string/jumbo v3, "onTouch()"

    invoke-static {v0, v3}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->f:Lcom/sponsorpay/d/c/b;

    invoke-virtual {v0}, Lcom/sponsorpay/d/c/b;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 338
    iput-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->k:Z

    .line 341
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 343
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/j;->setVisibility(I)V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    invoke-static {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Landroid/view/View;Z)V

    .line 362
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->d:Lcom/sponsorpay/publisher/mbe/player/e;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/a;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/e;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->u:Lcom/sponsorpay/publisher/mbe/player/f;

    invoke-interface {v2, v0}, Lcom/sponsorpay/publisher/mbe/player/f;->a(Ljava/lang/String;)V

    move v0, v1

    .line 367
    :goto_1
    return v0

    .line 355
    :cond_1
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/j;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/a;->l:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/sponsorpay/publisher/mbe/player/j;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    .line 356
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/a;->r:Lcom/sponsorpay/publisher/mbe/player/j;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 367
    goto :goto_1
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 483
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 484
    iget v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->A:I

    if-eq v1, v0, :cond_1

    .line 485
    iget v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->z:I

    .line 487
    iget v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->z:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 488
    iput v6, p0, Lcom/sponsorpay/publisher/mbe/player/a;->z:I

    .line 489
    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->A:I

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 501
    :cond_2
    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->o:J

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->e:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 502
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 505
    :cond_3
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->o:J

    .line 510
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->s:I

    .line 511
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->s:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    .line 512
    iput v6, p0, Lcom/sponsorpay/publisher/mbe/player/a;->s:I

    .line 515
    :cond_4
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->s:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->s:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 517
    :cond_5
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->B:Lcom/sponsorpay/publisher/mbe/player/a/a;

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->o:J

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->D:Z

    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/a;->h()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/sponsorpay/publisher/mbe/player/a/a;->a(JZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    :cond_6
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->c:Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/g;)V

    .line 523
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->s:I

    if-nez v0, :cond_7

    .line 524
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->b:Lcom/sponsorpay/publisher/mbe/player/e;

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->o:J

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/e;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/a;->u:Lcom/sponsorpay/publisher/mbe/player/f;

    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/mbe/player/f;->a(Ljava/lang/String;)V

    .line 528
    :cond_7
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->o:J

    iget-wide v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->j:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 529
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->e:Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/g;)V

    .line 532
    :cond_8
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->g:Lcom/sponsorpay/d/a/b;

    invoke-virtual {v0}, Lcom/sponsorpay/d/a/b;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/a;->o:J

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/a;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 533
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->d:Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/a;->a(Lcom/sponsorpay/publisher/mbe/player/g;)V

    goto/16 :goto_0
.end method
