.class public Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# static fields
.field private static a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private static final b:Ljava/lang/String;

.field private static e:Landroid/os/Handler;

.field private static f:Lorg/cocos2dx/lib/p;

.field public static g_activity:Landroid/app/Activity;


# instance fields
.field private c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

.field private d:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;

.field private g:Lorg/cocos2dx/lib/Cocos2dxEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a()V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a()V

    .line 162
    return-void
.end method

.method static synthetic a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Lorg/cocos2dx/lib/Cocos2dxEditText;

    return-object v0
.end method

.method static synthetic b(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;

    return-object v0
.end method

.method static synthetic b()Lorg/cocos2dx/lib/p;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/p;

    return-object v0
.end method

.method static synthetic c()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method static synthetic c(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    return-object v0
.end method

.method public static closeIMEKeyboard()V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 303
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 304
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openIMEKeyboard()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 291
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 292
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v1, 0x8

    .line 169
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    .line 170
    invoke-virtual {p0, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 173
    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 182
    new-instance v0, Lorg/cocos2dx/lib/p;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/p;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/p;

    .line 184
    new-instance v0, Lorg/cocos2dx/lib/d;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/d;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->e:Landroid/os/Handler;

    .line 222
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 223
    return-void
.end method

.method public deleteBackward()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lorg/cocos2dx/lib/j;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/j;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method public getRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    return-object v0
.end method

.method public getTextField()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Lorg/cocos2dx/lib/Cocos2dxEditText;

    return-object v0
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lorg/cocos2dx/lib/i;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/i;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 472
    invoke-super {p0, p1, p2, p3}, Landroid/opengl/GLSurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 474
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;

    invoke-interface {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;->onFocusGained()V

    .line 477
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 445
    if-eq p1, v1, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 446
    :cond_0
    if-ne p1, v1, :cond_1

    .line 447
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->queueBackButton()V

    .line 465
    :cond_1
    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lorg/cocos2dx/lib/g;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/g;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-super {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 235
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 236
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 241
    new-instance v0, Lorg/cocos2dx/lib/h;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/h;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-super {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->setScreenWidthAndHeight(II)V

    .line 440
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 332
    new-array v3, v2, [I

    .line 333
    new-array v4, v2, [F

    .line 334
    new-array v5, v2, [F

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    move v0, v1

    .line 343
    :goto_0
    if-ge v0, v2, :cond_0

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    aput v8, v3, v0

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    aput v8, v4, v0

    .line 346
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    aput v8, v5, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 351
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 353
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 356
    new-instance v1, Lorg/cocos2dx/lib/k;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/cocos2dx/lib/k;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFFD)V

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 367
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 368
    aget v4, v4, v1

    .line 369
    aget v5, v5, v1

    .line 371
    new-instance v1, Lorg/cocos2dx/lib/l;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/cocos2dx/lib/l;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFFD)V

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 381
    :pswitch_3
    new-instance v1, Lorg/cocos2dx/lib/m;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/cocos2dx/lib/m;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[FD)V

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 390
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 392
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 395
    new-instance v1, Lorg/cocos2dx/lib/n;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/cocos2dx/lib/n;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFFD)V

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 406
    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 407
    aget v4, v4, v1

    .line 408
    aget v5, v5, v1

    .line 410
    new-instance v1, Lorg/cocos2dx/lib/e;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/cocos2dx/lib/e;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFFD)V

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 419
    :pswitch_6
    new-instance v1, Lorg/cocos2dx/lib/f;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/cocos2dx/lib/f;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[FD)V

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->addPixelberryTask(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public setFocusGainedListener(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;

    .line 166
    return-void
.end method

.method public setTextField(Lorg/cocos2dx/lib/Cocos2dxEditText;)V
    .locals 2

    .prologue
    .line 279
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Lorg/cocos2dx/lib/Cocos2dxEditText;

    .line 280
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Lorg/cocos2dx/lib/Cocos2dxEditText;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/p;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Lorg/cocos2dx/lib/Cocos2dxEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setSingleLine(Z)V

    .line 282
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Lorg/cocos2dx/lib/Cocos2dxEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setImeOptions(I)V

    .line 283
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Lorg/cocos2dx/lib/Cocos2dxEditText;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/p;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 284
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setMainView(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    .line 285
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 287
    :cond_0
    return-void
.end method
