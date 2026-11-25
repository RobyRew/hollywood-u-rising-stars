.class Lorg/cocos2dx/lib/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/cocos2dx/lib/b;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v1, p0, Lorg/cocos2dx/lib/b;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/cocos2dx/lib/o;

    iget-object v2, v0, Lorg/cocos2dx/lib/o;->a:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/cocos2dx/lib/o;

    iget-object v0, v0, Lorg/cocos2dx/lib/o;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->a(Lorg/cocos2dx/lib/Cocos2dxActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
