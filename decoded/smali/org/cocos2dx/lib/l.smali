.class Lorg/cocos2dx/lib/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:D

.field final synthetic e:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFFD)V
    .locals 1

    .prologue
    .line 371
    iput-object p1, p0, Lorg/cocos2dx/lib/l;->e:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/l;->a:I

    iput p3, p0, Lorg/cocos2dx/lib/l;->b:F

    iput p4, p0, Lorg/cocos2dx/lib/l;->c:F

    iput-wide p5, p0, Lorg/cocos2dx/lib/l;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 374
    iget-object v0, p0, Lorg/cocos2dx/lib/l;->e:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/l;->a:I

    iget v2, p0, Lorg/cocos2dx/lib/l;->b:F

    iget v3, p0, Lorg/cocos2dx/lib/l;->c:F

    iget-wide v4, p0, Lorg/cocos2dx/lib/l;->d:D

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionDown(IFFD)V

    .line 376
    return-void
.end method
