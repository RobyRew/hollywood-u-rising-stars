.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static a:J


# instance fields
.field private b:J

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/a/b/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->e:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->h:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleKeyDown(I)V

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->h:Z

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTickLoadTextures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->f:Z

    .line 126
    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 98
    invoke-static {}, Lcom/google/a/b/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->e:Ljava/util/List;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 106
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const-string/jumbo v2, "Cocos2dxRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in runnables: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 112
    :cond_0
    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyDown(I)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTickLoadTextures()Z
.end method

.method private static native nativeTouchesBegin(IFFD)V
.end method

.method private static native nativeTouchesCancel([I[F[FD)V
.end method

.method private static native nativeTouchesEnd(IFFD)V
.end method

.method private static native nativeTouchesMove([I[F[FD)V
.end method

.method public static setAnimationInterval(D)V
    .locals 2

    .prologue
    .line 207
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->a:J

    .line 208
    return-void
.end method


# virtual methods
.method public addPixelberryTask(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->e:Ljava/util/List;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v1

    .line 56
    :cond_0
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[FD)V
    .locals 0

    .prologue
    .line 185
    invoke-static {p1, p2, p3, p4, p5}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[FD)V

    .line 186
    return-void
.end method

.method public handleActionDown(IFFD)V
    .locals 0

    .prologue
    .line 175
    invoke-static {p1, p2, p3, p4, p5}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFFD)V

    .line 176
    return-void
.end method

.method public handleActionMove([I[F[FD)V
    .locals 0

    .prologue
    .line 190
    invoke-static {p1, p2, p3, p4, p5}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[FD)V

    .line 191
    return-void
.end method

.method public handleActionUp(IFFD)V
    .locals 0

    .prologue
    .line 180
    invoke-static {p1, p2, p3, p4, p5}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFFD)V

    .line 181
    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .prologue
    .line 230
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    .line 231
    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public handleKeyDown(I)V
    .locals 0

    .prologue
    .line 195
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyDown(I)Z

    .line 196
    return-void
.end method

.method public handleOnPause()V
    .locals 0

    .prologue
    .line 199
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    .line 200
    return-void
.end method

.method public handleOnResume()V
    .locals 0

    .prologue
    .line 203
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    .line 204
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->g:Z

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 147
    iget-wide v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->b:J

    sub-long v2, v0, v2

    .line 148
    iget-boolean v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->f:Z

    if-eqz v4, :cond_3

    .line 149
    iget-boolean v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->h:Z

    if-eqz v4, :cond_1

    .line 150
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->finishActivity()V

    .line 151
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->h:Z

    .line 153
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 163
    :goto_1
    sget-wide v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->a:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 166
    :try_start_0
    sget-wide v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->a:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_2
    :goto_2
    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->b:J

    goto :goto_0

    .line 155
    :cond_3
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->a()V

    .line 156
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->b()V

    .line 159
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    goto :goto_1

    .line 167
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->c:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->d:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(II)V

    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->b:J

    .line 61
    return-void
.end method

.method public queueBackButton()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->h:Z

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDrawDisabled(Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->g:Z

    .line 134
    return-void
.end method

.method public setPixelberryReloadTextures(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->f:Z

    .line 117
    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->c:I

    .line 65
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->d:I

    .line 66
    return-void
.end method
