.class Lcom/jirbo/adcolony/aq;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/jirbo/adcolony/an;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/an;Landroid/content/Context;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1097
    iput-object p1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    .line 1098
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1086
    iput-boolean v0, p0, Lcom/jirbo/adcolony/aq;->a:Z

    .line 1087
    iput-boolean v0, p0, Lcom/jirbo/adcolony/aq;->b:Z

    .line 1099
    invoke-virtual {p0, p0}, Lcom/jirbo/adcolony/aq;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1100
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/aq;->setWillNotDraw(Z)V

    .line 1101
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/aq;->setBackgroundColor(I)V

    .line 1102
    iput-boolean p3, p0, Lcom/jirbo/adcolony/aq;->a:Z

    .line 1103
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 1107
    if-nez p1, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/an;->p:Z

    .line 1110
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/as;->setVisibility(I)V

    .line 1115
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iput-object p1, v0, Lcom/jirbo/adcolony/an;->e:Landroid/graphics/SurfaceTexture;

    .line 1116
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/aq;->a:Z

    if-nez v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/jirbo/adcolony/an;->W:Landroid/view/Surface;

    .line 1118
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iput p2, v0, Lcom/jirbo/adcolony/an;->f:I

    .line 1120
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iput p3, v0, Lcom/jirbo/adcolony/an;->g:I

    .line 1121
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    .line 1124
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v2, v2, Lcom/jirbo/adcolony/an;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/jirbo/adcolony/an;->aB:Ljava/io/FileInputStream;

    .line 1125
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v1, v1, Lcom/jirbo/adcolony/an;->aB:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1126
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v1, v1, Lcom/jirbo/adcolony/an;->W:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1127
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1128
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1129
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1130
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1131
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "[ADC] Native Ad Prepare called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/aq;->b:Z

    .line 1133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1134
    new-instance v1, Lcom/jirbo/adcolony/ar;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ar;-><init>(Lcom/jirbo/adcolony/aq;)V

    .line 1146
    iget-boolean v2, p0, Lcom/jirbo/adcolony/aq;->b:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1148
    :catch_0
    move-exception v0

    .line 1150
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/an;->p:Z

    .line 1151
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1162
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "[ADC] Native surface destroyed"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 1163
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/an;->t:Z

    .line 1164
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/as;->setVisibility(I)V

    .line 1166
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 1157
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "[ADC] onSurfaceTextureSizeChanged"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 1158
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 1171
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1185
    if-ne v0, v4, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/ba;->t:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/en;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget v0, v0, Lcom/jirbo/adcolony/an;->am:I

    iget-object v3, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v3, v3, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget v3, v3, Lcom/jirbo/adcolony/m;->f:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->I:Lcom/jirbo/adcolony/m;

    iget v0, v0, Lcom/jirbo/adcolony/m;->g:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    .line 1188
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return v4

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    sput-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    .line 1190
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->a:Lcom/jirbo/adcolony/ca;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v1, v1, Lcom/jirbo/adcolony/an;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v2, v2, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v2, v2, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/dc;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Lcom/jirbo/adcolony/dc;)V

    .line 1191
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->a()V

    .line 1193
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->C:Z

    if-nez v0, :cond_7

    .line 1196
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/ai;->f:Ljava/lang/String;

    .line 1197
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-string/jumbo v1, "fullscreen"

    iput-object v1, v0, Lcom/jirbo/adcolony/ai;->g:Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/ai;->o:Z

    .line 1201
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an;->w:Z

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ai;->p:Z

    .line 1203
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->p:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/en;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->F:Lcom/jirbo/adcolony/al;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->F:Lcom/jirbo/adcolony/al;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    invoke-interface {v0, v4, v1}, Lcom/jirbo/adcolony/al;->a(ZLcom/jirbo/adcolony/an;)V

    .line 1206
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1208
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->c:I

    .line 1209
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v1, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v1, v1, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-wide v2, v1, Lcom/jirbo/adcolony/ai;->k:D

    iput-wide v2, v0, Lcom/jirbo/adcolony/ai;->l:D

    .line 1210
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1217
    :goto_1
    sput-boolean v5, Lcom/jirbo/adcolony/ba;->t:Z

    .line 1218
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v1, "video_expanded"

    iget-object v2, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v2, v2, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ep;->b(Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 1219
    sget-boolean v0, Lcom/jirbo/adcolony/ba;->d:Z

    if-eqz v0, :cond_6

    .line 1221
    sget-object v0, Lcom/jirbo/adcolony/cx;->a:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Launching AdColonyOverlay"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 1222
    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1230
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->p:Z

    if-eqz v0, :cond_4

    .line 1233
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    iget-object v0, v0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/dg;

    iget-object v0, v0, Lcom/jirbo/adcolony/dg;->r:Lcom/jirbo/adcolony/bv;

    iget v1, v0, Lcom/jirbo/adcolony/bv;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/bv;->d:I

    .line 1236
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/an;->p:Z

    .line 1237
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/an;->w:Z

    goto/16 :goto_0

    .line 1214
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->E:Lcom/jirbo/adcolony/ai;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/jirbo/adcolony/ai;->l:D

    .line 1215
    sput v5, Lcom/jirbo/adcolony/ADCVideo;->c:I

    goto :goto_1

    .line 1226
    :cond_6
    sget-object v0, Lcom/jirbo/adcolony/cx;->a:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 1227
    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1245
    :cond_7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v2, v2, Lcom/jirbo/adcolony/an;->D:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1246
    sget-object v1, Lcom/jirbo/adcolony/ba;->E:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1250
    sget-object v0, Lcom/jirbo/adcolony/ba;->E:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "Unable to open store."

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
