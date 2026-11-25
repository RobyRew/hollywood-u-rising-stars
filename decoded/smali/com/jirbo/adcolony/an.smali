.class public Lcom/jirbo/adcolony/an;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Ljava/lang/String;

.field E:Lcom/jirbo/adcolony/ai;

.field F:Lcom/jirbo/adcolony/al;

.field G:Lcom/jirbo/adcolony/am;

.field H:Lcom/jirbo/adcolony/m;

.field I:Lcom/jirbo/adcolony/m;

.field J:Lcom/jirbo/adcolony/m;

.field K:Landroid/widget/ImageView;

.field L:Lcom/jirbo/adcolony/as;

.field M:Landroid/view/View;

.field N:Landroid/graphics/Bitmap;

.field O:Lcom/jirbo/adcolony/m;

.field P:Landroid/widget/ImageView;

.field Q:Z

.field R:Landroid/widget/Button;

.field S:Ljava/lang/String;

.field T:Ljava/lang/String;

.field U:Ljava/lang/String;

.field V:Landroid/media/MediaPlayer;

.field W:Landroid/view/Surface;

.field a:Landroid/app/Activity;

.field aA:Landroid/widget/FrameLayout$LayoutParams;

.field aB:Ljava/io/FileInputStream;

.field aa:Ljava/lang/String;

.field ab:Ljava/lang/String;

.field ac:Ljava/lang/String;

.field ad:Ljava/lang/String;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:Ljava/lang/String;

.field ah:Ljava/lang/String;

.field ai:Ljava/lang/String;

.field aj:Lcom/jirbo/adcolony/ah;

.field ak:I

.field al:I

.field am:I

.field an:I

.field ao:I

.field ap:I

.field aq:I

.field ar:I

.field as:Lcom/jirbo/adcolony/dg;

.field at:F

.field au:F

.field av:F

.field aw:Z

.field ax:Z

.field ay:Z

.field az:Landroid/widget/FrameLayout$LayoutParams;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/view/ViewGroup;

.field e:Landroid/graphics/SurfaceTexture;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x3e800000    # 0.25f

    .line 181
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->v:Z

    .line 83
    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->x:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->Q:Z

    .line 112
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->S:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->T:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->U:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ah:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ai:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/ah;->a:Lcom/jirbo/adcolony/ah;

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->aj:Lcom/jirbo/adcolony/ah;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/an;->an:I

    .line 137
    const v0, -0x333334

    iput v0, p0, Lcom/jirbo/adcolony/an;->ap:I

    .line 138
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jirbo/adcolony/an;->aq:I

    .line 146
    iput v1, p0, Lcom/jirbo/adcolony/an;->at:F

    .line 147
    iput v1, p0, Lcom/jirbo/adcolony/an;->au:F

    .line 183
    iput-boolean p4, p0, Lcom/jirbo/adcolony/an;->y:Z

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/jirbo/adcolony/an;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 187
    invoke-virtual {p0}, Lcom/jirbo/adcolony/an;->a()V

    .line 188
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/an;->a(Z)V

    .line 302
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/an;->a(FZ)V

    .line 830
    return-void
.end method

.method a(FZ)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 789
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iput p1, p0, Lcom/jirbo/adcolony/an;->au:F

    .line 791
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_4

    .line 793
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->r:Z

    if-nez v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 798
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->t:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_3

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->r:Z

    if-nez v0, :cond_3

    .line 802
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    .line 803
    const-string/jumbo v1, "user_action"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 805
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v2, v2, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 806
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    .line 807
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/h;Lcom/jirbo/adcolony/y;)V

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->m:Z

    goto :goto_0

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    .line 814
    const-string/jumbo v1, "user_action"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 816
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v2, v2, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 817
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    .line 818
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/h;Lcom/jirbo/adcolony/y;)V

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->m:Z

    goto/16 :goto_0

    .line 822
    :cond_4
    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 824
    iput p1, p0, Lcom/jirbo/adcolony/an;->at:F

    goto/16 :goto_0
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/an;->a(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 196
    return-void
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-static {}, Lcom/jirbo/adcolony/ba;->e()V

    .line 200
    const/4 v0, 0x0

    sput v0, Lcom/jirbo/adcolony/ba;->aa:I

    .line 202
    iput-object p1, p0, Lcom/jirbo/adcolony/an;->a:Landroid/app/Activity;

    .line 203
    iput-object p2, p0, Lcom/jirbo/adcolony/an;->b:Ljava/lang/String;

    .line 204
    iput p3, p0, Lcom/jirbo/adcolony/an;->am:I

    .line 205
    iput p3, p0, Lcom/jirbo/adcolony/an;->h:I

    .line 206
    if-eqz p4, :cond_0

    .line 208
    iput p4, p0, Lcom/jirbo/adcolony/an;->i:I

    .line 209
    iput p4, p0, Lcom/jirbo/adcolony/an;->an:I

    .line 210
    iput-boolean v3, p0, Lcom/jirbo/adcolony/an;->k:Z

    .line 213
    :cond_0
    iput-boolean v3, p0, Lcom/jirbo/adcolony/an;->m:Z

    .line 215
    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jirbo/adcolony/an;->av:F

    .line 218
    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_4

    .line 222
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 223
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 224
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 225
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 233
    :goto_0
    if-ge v0, v1, :cond_5

    :goto_1
    iput v0, p0, Lcom/jirbo/adcolony/an;->ar:I

    .line 235
    new-instance v0, Lcom/jirbo/adcolony/ai;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/ai;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    .line 237
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 240
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/an;->setBackgroundColor(I)V

    .line 242
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->v:Z

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ai;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    if-nez v0, :cond_6

    .line 246
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->y:Z

    if-nez v0, :cond_2

    .line 248
    sget-object v0, Lcom/jirbo/adcolony/cx;->d:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "AdColonyNativeAdView created while no ads are available, returning blank view."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 249
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const/4 v1, 0x5

    iput v1, v0, Lcom/jirbo/adcolony/ai;->b:I

    .line 250
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, p2, v1}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 252
    :cond_2
    iput-boolean v3, p0, Lcom/jirbo/adcolony/an;->ay:Z

    .line 271
    :cond_3
    :goto_2
    return-void

    .line 229
    :cond_4
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 230
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 233
    goto :goto_1

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/dg;

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->as:Lcom/jirbo/adcolony/dg;

    .line 256
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->y:Z

    if-nez v0, :cond_3

    .line 258
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->y:Z

    if-nez v0, :cond_7

    .line 260
    sget-object v0, Lcom/jirbo/adcolony/ba;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_7
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/dg;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dg;->c()Z

    .line 263
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ai;->a(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 265
    iput-boolean v3, p0, Lcom/jirbo/adcolony/an;->ay:Z

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iput-boolean v3, v0, Lcom/jirbo/adcolony/dy;->i:Z

    .line 268
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, p2, v1}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    goto :goto_2
.end method

.method a(Z)V
    .locals 13

    .prologue
    const/16 v12, 0x30

    const/16 v11, 0xe

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 305
    iput-boolean v8, p0, Lcom/jirbo/adcolony/an;->t:Z

    .line 306
    iput-boolean v8, p0, Lcom/jirbo/adcolony/an;->l:Z

    .line 307
    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/an;->setWillNotDraw(Z)V

    .line 309
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iput-object p0, v0, Lcom/jirbo/adcolony/ai;->s:Lcom/jirbo/adcolony/an;

    .line 311
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->v:Z

    if-eqz v0, :cond_14

    .line 313
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->a:Lcom/jirbo/adcolony/ca;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v1, v1, Lcom/jirbo/adcolony/ai;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v8}, Lcom/jirbo/adcolony/cb;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->ay:Z

    if-nez v0, :cond_5

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->a:Lcom/jirbo/adcolony/ca;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ca;->b(Ljava/lang/String;)V

    .line 318
    :goto_0
    const-string/jumbo v0, "video_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->c:Ljava/lang/String;

    .line 319
    const-string/jumbo v0, "advertiser_name"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->aa:Ljava/lang/String;

    .line 320
    const-string/jumbo v0, "description"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ab:Ljava/lang/String;

    .line 321
    const-string/jumbo v0, "title"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ac:Ljava/lang/String;

    .line 322
    const-string/jumbo v0, "poster_image"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ad:Ljava/lang/String;

    .line 323
    const-string/jumbo v0, "unmute"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ae:Ljava/lang/String;

    .line 324
    const-string/jumbo v0, "mute"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->af:Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "thumb_image"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ag:Ljava/lang/String;

    .line 326
    const-string/jumbo v0, "native_engagement_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->Q:Z

    .line 327
    const-string/jumbo v0, "native_engagement_label"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->S:Ljava/lang/String;

    .line 328
    const-string/jumbo v0, "native_engagement_command"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->T:Ljava/lang/String;

    .line 329
    const-string/jumbo v0, "native_engagement_type"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->U:Ljava/lang/String;

    .line 330
    const-string/jumbo v0, "v4iap_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->B:Z

    .line 331
    const-string/jumbo v0, "click_to_install"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->C:Z

    .line 332
    const-string/jumbo v0, "store_url"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->D:Ljava/lang/String;

    .line 334
    sget-object v0, Lcom/jirbo/adcolony/ba;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ai:Ljava/lang/String;

    .line 336
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->B:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/ah;->b:Lcom/jirbo/adcolony/ah;

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->aj:Lcom/jirbo/adcolony/ah;

    .line 337
    :cond_1
    const-string/jumbo v0, "product_id"

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->ah:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/dy;->b:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->s:Z

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->as:Lcom/jirbo/adcolony/dg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->as:Lcom/jirbo/adcolony/dg;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dg;->k()V

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/dy;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/dg;

    if-nez v0, :cond_7

    .line 343
    :cond_3
    const/16 v0, 0xd

    sput v0, Lcom/jirbo/adcolony/ba;->aa:I

    .line 540
    :cond_4
    :goto_2
    return-void

    .line 314
    :cond_5
    iput-boolean v9, p0, Lcom/jirbo/adcolony/an;->p:Z

    goto/16 :goto_0

    .line 339
    :cond_6
    iput-boolean v9, p0, Lcom/jirbo/adcolony/an;->s:Z

    goto :goto_1

    .line 346
    :cond_7
    iput-boolean v9, p0, Lcom/jirbo/adcolony/an;->n:Z

    .line 347
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->y:Z

    if-nez v0, :cond_4

    .line 352
    :cond_8
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->v:Z

    if-eqz v0, :cond_c

    .line 355
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    iget v0, v0, Lcom/jirbo/adcolony/df;->b:I

    iput v0, p0, Lcom/jirbo/adcolony/an;->ak:I

    .line 356
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    iget v0, v0, Lcom/jirbo/adcolony/df;->c:I

    iput v0, p0, Lcom/jirbo/adcolony/an;->al:I

    .line 358
    invoke-static {}, Lcom/jirbo/adcolony/ba;->f()V

    .line 360
    iget v0, p0, Lcom/jirbo/adcolony/an;->an:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 362
    iget v0, p0, Lcom/jirbo/adcolony/an;->al:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-double v2, v2

    iget v4, p0, Lcom/jirbo/adcolony/an;->ak:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/an;->an:I

    .line 363
    iget v0, p0, Lcom/jirbo/adcolony/an;->an:I

    iput v0, p0, Lcom/jirbo/adcolony/an;->i:I

    .line 366
    :cond_9
    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->Q:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/jirbo/adcolony/an;->an:I

    iget v1, p0, Lcom/jirbo/adcolony/an;->an:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jirbo/adcolony/an;->an:I

    .line 368
    :cond_a
    iget v0, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/an;->ak:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 369
    iget v1, p0, Lcom/jirbo/adcolony/an;->an:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/an;->al:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 370
    iget v2, p0, Lcom/jirbo/adcolony/an;->ak:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jirbo/adcolony/an;->al:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 372
    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 375
    iput-boolean v9, p0, Lcom/jirbo/adcolony/an;->ax:Z

    .line 376
    iget v0, p0, Lcom/jirbo/adcolony/an;->an:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/an;->am:I

    .line 385
    :goto_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->am:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->aA:Landroid/widget/FrameLayout$LayoutParams;

    .line 386
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->i:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->az:Landroid/widget/FrameLayout$LayoutParams;

    .line 388
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->Q:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->aw:Z

    if-eqz v0, :cond_16

    .line 390
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->aA:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->i:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->az:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->i:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/jirbo/adcolony/an;->i:I

    iget v3, p0, Lcom/jirbo/adcolony/an;->an:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/jirbo/adcolony/an;->an:I

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 409
    :cond_b
    :goto_4
    new-instance v0, Lcom/jirbo/adcolony/m;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->ad:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/m;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->H:Lcom/jirbo/adcolony/m;

    .line 410
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->H:Lcom/jirbo/adcolony/m;

    iget v0, v0, Lcom/jirbo/adcolony/m;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->H:Lcom/jirbo/adcolony/m;

    iget v1, v1, Lcom/jirbo/adcolony/m;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float v1, v10, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->H:Lcom/jirbo/adcolony/m;

    iget v0, v0, Lcom/jirbo/adcolony/m;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/an;->an:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    .line 413
    :goto_5
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->H:Lcom/jirbo/adcolony/m;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3, v9}, Lcom/jirbo/adcolony/m;->a(DZ)V

    .line 415
    iput-boolean v8, p0, Lcom/jirbo/adcolony/an;->v:Z

    .line 418
    :cond_c
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->Q:Z

    if-eqz v0, :cond_d

    .line 420
    new-instance v0, Landroid/widget/Button;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    .line 421
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 423
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    iget v1, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-double v4, v1

    iget v1, p0, Lcom/jirbo/adcolony/an;->ar:I

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 424
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 425
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    iget v1, p0, Lcom/jirbo/adcolony/an;->ap:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 426
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    iget v1, p0, Lcom/jirbo/adcolony/an;->aq:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 427
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    new-instance v1, Lcom/jirbo/adcolony/ao;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ao;-><init>(Lcom/jirbo/adcolony/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 473
    :cond_d
    new-instance v0, Lcom/jirbo/adcolony/m;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->ae:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/m;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    .line 474
    new-instance v0, Lcom/jirbo/adcolony/m;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->af:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/m;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    .line 475
    new-instance v0, Lcom/jirbo/adcolony/m;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->ag:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/m;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->O:Lcom/jirbo/adcolony/m;

    .line 476
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->O:Lcom/jirbo/adcolony/m;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->O:Lcom/jirbo/adcolony/m;

    iget v1, v1, Lcom/jirbo/adcolony/m;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x4016000000000000L    # 5.5

    div-double/2addr v4, v6

    iget v1, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-float v1, v1

    float-to-double v6, v1

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v1, v2

    div-float v1, v10, v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/m;->a(DZ)V

    .line 477
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget v1, p0, Lcom/jirbo/adcolony/an;->av:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/m;->a(DZ)V

    .line 478
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget v1, p0, Lcom/jirbo/adcolony/an;->av:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/m;->a(DZ)V

    .line 480
    new-instance v0, Lcom/jirbo/adcolony/as;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/as;-><init>(Lcom/jirbo/adcolony/an;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    .line 481
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->P:Landroid/widget/ImageView;

    .line 482
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    .line 483
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->P:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->O:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 485
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->m:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 487
    :goto_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget v1, v1, Lcom/jirbo/adcolony/m;->f:I

    iget-object v2, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget v2, v2, Lcom/jirbo/adcolony/m;->g:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 488
    iget v1, p0, Lcom/jirbo/adcolony/an;->h:I

    iget-object v2, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget v2, v2, Lcom/jirbo/adcolony/m;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 489
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    new-instance v2, Lcom/jirbo/adcolony/ap;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/ap;-><init>(Lcom/jirbo/adcolony/an;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    .line 512
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an;->p:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    :cond_e
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an;->q:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_10

    new-instance v1, Lcom/jirbo/adcolony/aq;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/jirbo/adcolony/an;->p:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/jirbo/adcolony/aq;-><init>(Lcom/jirbo/adcolony/an;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/jirbo/adcolony/an;->M:Landroid/view/View;

    .line 520
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_11

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->M:Landroid/view/View;

    iget-object v2, p0, Lcom/jirbo/adcolony/an;->aA:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_12

    iput-boolean v9, p0, Lcom/jirbo/adcolony/an;->p:Z

    .line 523
    :cond_12
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    iget-object v2, p0, Lcom/jirbo/adcolony/an;->az:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an;->s:Z

    if-eqz v1, :cond_13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_13

    iget-boolean v1, p0, Lcom/jirbo/adcolony/an;->x:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    :cond_13
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->Q:Z

    if-eqz v0, :cond_4

    .line 529
    if-eqz p1, :cond_1b

    .line 531
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->i:I

    div-int/lit8 v2, v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 538
    :goto_7
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->R:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 349
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_8

    goto/16 :goto_2

    .line 381
    :cond_15
    iput-boolean v9, p0, Lcom/jirbo/adcolony/an;->aw:Z

    .line 382
    iget v0, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/an;->an:I

    goto/16 :goto_3

    .line 393
    :cond_16
    if-nez p1, :cond_17

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->aw:Z

    if-eqz v0, :cond_17

    .line 395
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->aA:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->i:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 396
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->az:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->i:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/an;->i:I

    iget v3, p0, Lcom/jirbo/adcolony/an;->an:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 398
    :cond_17
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->Q:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_18

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->ax:Z

    if-eqz v0, :cond_18

    .line 400
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->aA:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->am:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 401
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->az:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->am:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v3, p0, Lcom/jirbo/adcolony/an;->am:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 403
    :cond_18
    if-nez p1, :cond_b

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->ax:Z

    if-eqz v0, :cond_b

    .line 405
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->aA:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->am:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 406
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->az:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->am:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v3, p0, Lcom/jirbo/adcolony/an;->am:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 410
    :cond_19
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->H:Lcom/jirbo/adcolony/m;

    iget v0, v0, Lcom/jirbo/adcolony/m;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/an;->am:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    goto/16 :goto_5

    .line 486
    :cond_1a
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 535
    :cond_1b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/an;->h:I

    iget v2, p0, Lcom/jirbo/adcolony/an;->an:I

    div-int/lit8 v2, v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto/16 :goto_7
.end method

.method a(ZZ)V
    .locals 4

    .prologue
    .line 611
    if-eqz p1, :cond_1

    .line 613
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->m:Z

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/an;->a(FZ)V

    .line 616
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an;->m:Z

    .line 622
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 624
    iget v0, p0, Lcom/jirbo/adcolony/an;->au:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 626
    iget v0, p0, Lcom/jirbo/adcolony/an;->au:F

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/an;->a(FZ)V

    .line 633
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 630
    :cond_3
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/an;->a(FZ)V

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/jirbo/adcolony/an;->h:I

    return v0
.end method

.method b(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 552
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ai;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/an;->ay:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/an;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/t;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->Q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/an;->i:I

    iget v1, p0, Lcom/jirbo/adcolony/an;->i:I

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jirbo/adcolony/an;->i:I

    goto :goto_0
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 768
    if-eqz p1, :cond_1

    .line 770
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 771
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 772
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/jirbo/adcolony/an;->au:F

    iget v2, p0, Lcom/jirbo/adcolony/an;->au:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 777
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 778
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method declared-synchronized d()V
    .locals 2

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 843
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 838
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/jirbo/adcolony/an;->au:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/an;->a(F)V

    .line 839
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 840
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cb;->a(Lcom/jirbo/adcolony/y;)V

    .line 841
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ai;->n:Z

    .line 842
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->F:Lcom/jirbo/adcolony/al;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->F:Lcom/jirbo/adcolony/al;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/jirbo/adcolony/al;->a(ZLcom/jirbo/adcolony/an;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()V
    .locals 3

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->q:Z

    if-nez v0, :cond_0

    .line 852
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ep;->b(Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 853
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 855
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->aB:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/as;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iput-boolean v5, v0, Lcom/jirbo/adcolony/ai;->n:Z

    .line 904
    iput-boolean v5, p0, Lcom/jirbo/adcolony/an;->p:Z

    .line 905
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 906
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    .line 907
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iput v4, v0, Lcom/jirbo/adcolony/ai;->m:I

    .line 908
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    .line 909
    const-string/jumbo v1, "ad_slot"

    sget-object v2, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->e:Lcom/jirbo/adcolony/er;

    iget v2, v2, Lcom/jirbo/adcolony/er;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 910
    const-string/jumbo v1, "replay"

    invoke-virtual {v0, v1, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 911
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/h;Lcom/jirbo/adcolony/y;)V

    .line 912
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/dc;->q:Z

    .line 914
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->F:Lcom/jirbo/adcolony/al;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->F:Lcom/jirbo/adcolony/al;

    invoke-interface {v0, v4, p0}, Lcom/jirbo/adcolony/al;->b(ZLcom/jirbo/adcolony/an;)V

    .line 915
    :cond_1
    iput-boolean v5, p0, Lcom/jirbo/adcolony/an;->w:Z

    .line 916
    return-void

    .line 894
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 940
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 944
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 946
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/an;->ao:I

    .line 947
    :cond_3
    iget v0, p0, Lcom/jirbo/adcolony/an;->ao:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget v4, p0, Lcom/jirbo/adcolony/an;->ao:I

    iput v4, v0, Lcom/jirbo/adcolony/ai;->m:I

    .line 949
    :cond_4
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/an;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 950
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/jirbo/adcolony/an;->c()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_8

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/jirbo/adcolony/an;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_8

    move v0, v1

    .line 952
    :goto_1
    if-nez v0, :cond_5

    iget-boolean v4, p0, Lcom/jirbo/adcolony/an;->j:Z

    if-eqz v4, :cond_6

    :cond_5
    iget-boolean v4, p0, Lcom/jirbo/adcolony/an;->j:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_6

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    .line 953
    invoke-virtual {p0}, Lcom/jirbo/adcolony/an;->c()I

    move-result v4

    if-ge v0, v4, :cond_9

    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_9

    .line 955
    :cond_6
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->q:Z

    if-nez v0, :cond_7

    .line 957
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "[ADC] Scroll Pause"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 958
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v1, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v1, v3}, Lcom/jirbo/adcolony/ep;->b(Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 959
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 960
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/as;->setVisibility(I)V

    .line 991
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/an;->invalidate()V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 950
    goto :goto_1

    .line 963
    :cond_9
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 965
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->t:Z

    if-nez v0, :cond_a

    .line 967
    invoke-virtual {p1, v5, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_2

    .line 971
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v2, "native"

    iput-object v2, v0, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v2, "native"

    iput-object v2, v0, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 973
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v2, v3, v4}, Lcom/jirbo/adcolony/cb;->a(DLcom/jirbo/adcolony/y;)V

    .line 976
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->z:Z

    if-nez v0, :cond_7

    .line 978
    iput-boolean v1, p0, Lcom/jirbo/adcolony/an;->z:Z

    .line 979
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    const-string/jumbo v2, "native_start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{\"ad_slot\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v4, v4, Lcom/jirbo/adcolony/cb;->e:Lcom/jirbo/adcolony/er;

    iget v4, v4, Lcom/jirbo/adcolony/er;->j:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", \"replay\":false}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v2, v3, v4}, Lcom/jirbo/adcolony/cb;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 980
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/dc;->q:Z

    .line 981
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/dc;->p:Z

    .line 982
    invoke-static {}, Lcom/jirbo/adcolony/ba;->f()V

    .line 983
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/dg;

    iget-object v0, v0, Lcom/jirbo/adcolony/dg;->j:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v1, v1, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iget-object v1, v1, Lcom/jirbo/adcolony/dc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/d;

    goto/16 :goto_2

    .line 987
    :cond_b
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/as;->a:Z

    if-nez v0, :cond_7

    .line 989
    invoke-virtual {p1, v5, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto/16 :goto_2
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 923
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/as;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 925
    iput-boolean v2, p0, Lcom/jirbo/adcolony/an;->p:Z

    .line 926
    iput-boolean v2, p0, Lcom/jirbo/adcolony/an;->t:Z

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    .line 928
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iput v3, v0, Lcom/jirbo/adcolony/ai;->m:I

    .line 929
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 862
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "[ADC] Native Ad onPrepared called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 863
    iput-boolean v2, p0, Lcom/jirbo/adcolony/an;->t:Z

    .line 865
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/as;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    iput-boolean v2, p0, Lcom/jirbo/adcolony/an;->p:Z

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    .line 871
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iput v3, v0, Lcom/jirbo/adcolony/ai;->m:I

    .line 883
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/an;->c(Z)V

    goto :goto_0

    .line 881
    :cond_2
    iget v0, p0, Lcom/jirbo/adcolony/an;->au:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/an;->a(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1003
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 1062
    :goto_0
    return v0

    .line 1004
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1006
    if-ne v2, v1, :cond_3

    sget-boolean v2, Lcom/jirbo/adcolony/ba;->t:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/en;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    iget-boolean v2, p0, Lcom/jirbo/adcolony/an;->C:Z

    if-nez v2, :cond_5

    .line 1010
    iget-object v2, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    sput-object v2, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    .line 1011
    sget-object v2, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->a:Lcom/jirbo/adcolony/ca;

    iget-object v3, p0, Lcom/jirbo/adcolony/an;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v4, v4, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Lcom/jirbo/adcolony/dc;)V

    .line 1012
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->a()V

    .line 1017
    iget-object v2, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-boolean v3, p0, Lcom/jirbo/adcolony/an;->w:Z

    iput-boolean v3, v2, Lcom/jirbo/adcolony/ai;->p:Z

    .line 1020
    iget-object v2, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iput-boolean v1, v2, Lcom/jirbo/adcolony/ai;->o:Z

    .line 1021
    iget-object v2, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v3, "native"

    iput-object v3, v2, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 1022
    iget-object v2, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v3, "fullscreen"

    iput-object v3, v2, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 1023
    sput-boolean v0, Lcom/jirbo/adcolony/ba;->t:Z

    .line 1024
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ep;->b(Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 1025
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->F:Lcom/jirbo/adcolony/al;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/an;->F:Lcom/jirbo/adcolony/al;

    invoke-interface {v0, v1, p0}, Lcom/jirbo/adcolony/al;->a(ZLcom/jirbo/adcolony/an;)V

    .line 1026
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/ba;->d:Z

    if-eqz v0, :cond_4

    .line 1028
    sget-object v0, Lcom/jirbo/adcolony/cx;->a:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "Launching AdColonyOverlay"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 1029
    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1036
    :goto_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an;->p:Z

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const/4 v2, -0x1

    iput v2, v0, Lcom/jirbo/adcolony/ai;->a:I

    .line 1040
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/dg;

    iget-object v0, v0, Lcom/jirbo/adcolony/dg;->r:Lcom/jirbo/adcolony/bv;

    iget v2, v0, Lcom/jirbo/adcolony/bv;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/jirbo/adcolony/bv;->d:I

    .line 1042
    iget-object v0, p0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/dc;->q:Z

    .line 1044
    :cond_2
    iput-boolean v1, p0, Lcom/jirbo/adcolony/an;->p:Z

    .line 1045
    iput-boolean v1, p0, Lcom/jirbo/adcolony/an;->w:Z

    :cond_3
    :goto_2
    move v0, v1

    .line 1062
    goto/16 :goto_0

    .line 1033
    :cond_4
    sget-object v0, Lcom/jirbo/adcolony/cx;->a:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 1034
    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1052
    :cond_5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/jirbo/adcolony/an;->D:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1053
    sget-object v3, Lcom/jirbo/adcolony/ba;->E:Landroid/app/Activity;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1055
    :catch_0
    move-exception v2

    .line 1057
    sget-object v2, Lcom/jirbo/adcolony/ba;->E:Landroid/app/Activity;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "Unable to open store."

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
