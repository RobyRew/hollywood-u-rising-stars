.class Lorg/cocos2dx/lib/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b()Lorg/cocos2dx/lib/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->append(Ljava/lang/CharSequence;)V

    .line 193
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b()Lorg/cocos2dx/lib/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/p;->a(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b()Lorg/cocos2dx/lib/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 198
    iget-object v1, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 199
    const-string/jumbo v0, "GLSurfaceView"

    const-string/jumbo v1, "showSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b()Lorg/cocos2dx/lib/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 209
    iget-object v1, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 210
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 211
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 212
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/cocos2dx/lib/d;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;->onFocusGained()V

    .line 215
    :cond_1
    const-string/jumbo v0, "GLSurfaceView"

    const-string/jumbo v1, "HideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
