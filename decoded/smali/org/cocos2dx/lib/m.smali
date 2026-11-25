.class Lorg/cocos2dx/lib/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[I

.field final synthetic b:[F

.field final synthetic c:[F

.field final synthetic d:D

.field final synthetic e:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[FD)V
    .locals 1

    .prologue
    .line 381
    iput-object p1, p0, Lorg/cocos2dx/lib/m;->e:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object p2, p0, Lorg/cocos2dx/lib/m;->a:[I

    iput-object p3, p0, Lorg/cocos2dx/lib/m;->b:[F

    iput-object p4, p0, Lorg/cocos2dx/lib/m;->c:[F

    iput-wide p5, p0, Lorg/cocos2dx/lib/m;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 384
    iget-object v0, p0, Lorg/cocos2dx/lib/m;->e:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/m;->a:[I

    iget-object v2, p0, Lorg/cocos2dx/lib/m;->b:[F

    iget-object v3, p0, Lorg/cocos2dx/lib/m;->c:[F

    iget-wide v4, p0, Lorg/cocos2dx/lib/m;->d:D

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionMove([I[F[FD)V

    .line 385
    return-void
.end method
