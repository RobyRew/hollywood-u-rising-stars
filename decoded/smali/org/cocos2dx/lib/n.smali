.class Lorg/cocos2dx/lib/n;
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
    .line 395
    iput-object p1, p0, Lorg/cocos2dx/lib/n;->e:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/n;->a:I

    iput p3, p0, Lorg/cocos2dx/lib/n;->b:F

    iput p4, p0, Lorg/cocos2dx/lib/n;->c:F

    iput-wide p5, p0, Lorg/cocos2dx/lib/n;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 398
    iget-object v0, p0, Lorg/cocos2dx/lib/n;->e:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/n;->a:I

    iget v2, p0, Lorg/cocos2dx/lib/n;->b:F

    iget v3, p0, Lorg/cocos2dx/lib/n;->c:F

    iget-wide v4, p0, Lorg/cocos2dx/lib/n;->d:D

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionUp(IFFD)V

    .line 400
    return-void
.end method
